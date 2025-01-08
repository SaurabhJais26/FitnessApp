//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 07/01/25.
//

import SwiftUI


class HomeViewModel: ObservableObject {
    
    let healthmanager = HealthManager.shared
    
    @Published var calories: Int = 0
    @Published var exercise: Int = 0
    @Published var stand: Int = 0
    @Published var activities = [Activity]()
    @Published var workouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 1, title: "Running", image: "figure.run", tintColor: .red, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .blue, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .yellow, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 4, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Jan 02", calories: "123 kcal")
    ]
    
    var mockActivities = [
        Activity(title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(title: "Today", subtitle: "Goal 1000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "7812"),
        Activity(title: "Today steps", subtitle: "Goal 60,000", image: "figure.run", tintColor: .yellow, amount: "55,812")
    ]
    
    init() {
        Task {
            do {
                try await healthmanager.requestHealthKitAccess()
                fetchTodayCalories()
                fetchTodayExerciseTime()
                fetchTodayStandHours()
                fetchTodaySteps()
                fetchCurrentWeekActivities()
                fetchRecentWorkouts()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchTodayCalories() {
        healthmanager.fetchTodayCaloriesBurned { result in
            switch result {
            case .success(let calories):
                DispatchQueue.main.async {
                    self.calories = Int(calories)
                    let activity = Activity(title: "Calories Burned", subtitle: "Today", image: "flame", tintColor: .red, amount: calories.formattedNumberString())
                    self.activities.append(activity)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayExerciseTime() {
        healthmanager.fetchTodayExerciseTime { result in
            switch result {
                case .success(let minutes):
                DispatchQueue.main.async {
                    self.exercise = Int(minutes)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayStandHours() {
        healthmanager.fetchTodayStandHours { result in
            switch result {
            case .success(let hours):
                DispatchQueue.main.async {
                    self.stand = hours
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    // MARK: -
    func fetchTodaySteps() {
        healthmanager.fetchTodaySteps { result in
            switch result {
            case .success(let activity):
                DispatchQueue.main.async {
                    self.activities.append(activity)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchCurrentWeekActivities() {
        healthmanager.fetchCurrentWeekWorkoutStats { result in
            switch result {
            case .success(let activities):
                DispatchQueue.main.async {
                    self.activities.append(contentsOf: activities)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    // MARK: Recent Workouts
    func fetchRecentWorkouts() {
        healthmanager.fetchWorkoutsForMonth(month: Date()) { result in
            switch result {
            case .success(let workouts):
                DispatchQueue.main.async {
                    self.workouts = Array(workouts.prefix(4))
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
