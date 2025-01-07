//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 07/01/25.
//

import SwiftUI


class HomeViewModel: ObservableObject {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today", subtitle: "Goal 1000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "7812"),
        Activity(id: 3, title: "Today steps", subtitle: "Goal 60,000", image: "figure.run", tintColor: .yellow, amount: "55,812")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 1, title: "Running", image: "figure.run", tintColor: .red, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .blue, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .yellow, duration: "23 mins", date: "Jan 02", calories: "123 kcal"),
        Workout(id: 4, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Jan 02", calories: "123 kcal")
    ]
}
