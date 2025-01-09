//
//  ChartsViewModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 08/01/25.
//

import Foundation

class ChartsViewModel: ObservableObject {
    
    let healthmanager = HealthManager.shared
    
    @Published var oneWeekAverage = 1235
    @Published var oneWeekTotal = 8655
    
    @Published var mockOnemonthData = [DailyStepModel]()
    @Published var oneMonthAverage = 0
    @Published var oneMonthTotal = 0
    
    @Published var mockThreemonthData = [DailyStepModel]()
    @Published var threeMonthAverage = 0
    @Published var threeMonthTotal = 0
    
    @Published var ytdChartData = [MonthlyStepModel]()
    @Published var ytdAverage = 0
    @Published var ytdTotal = 0
    
    @Published var oneYearChartData = [MonthlyStepModel]()
    @Published var oneYearAverage = 0
    @Published var oneYearTotal = 0
    
    var mockWeekChartData = [
        DailyStepModel(date: Date(), count: 15000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), count: 9775),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), count: 8000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), count: 12000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), count: 10000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), count: 7000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), count: 5000)
    ]
    
    var mockYTDChartData = [
        MonthlyStepModel(date: Date(), count: 15000),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -1, to: Date()) ?? Date(), count: 9775),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -2, to: Date()) ?? Date(), count: 8000),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -3, to: Date()) ?? Date(), count: 12000),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -4, to: Date()) ?? Date(), count: 18000),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -5, to: Date()) ?? Date(), count: 16000),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -6, to: Date()) ?? Date(), count: 15000)
    ]
    
    init() {
        let mockOneMonth = mockDataForDays(days: 30)
        let mockThreeMonth = mockDataForDays(days: 90)
        DispatchQueue.main.async {
            self.mockOnemonthData = mockOneMonth
            self.mockThreemonthData = mockThreeMonth
        }
        
        fetchYTDAndOneYearChartData()
    }
    
    
    func mockDataForDays(days: Int) -> [DailyStepModel] {
        var mockData = [DailyStepModel]()
        for day in 0..<days {
            let currentDate = Calendar.current.date(byAdding: .day, value: -day, to: Date()) ?? Date()
            let randomStepCount = Int.random(in: 1000...15000)
            let dailyStepData = DailyStepModel(date: currentDate, count: randomStepCount)
            mockData.append(dailyStepData)
        }
        return mockData
    }
    
    func fetchYTDAndOneYearChartData() {
        healthmanager.fetchYTDAndOneYearChartData { result in
            switch result {
            case .success(let result):
                DispatchQueue.main.async {
                    self.ytdChartData = result.ytd
                    self.oneYearChartData = result.oneYear
                    
                    self.ytdTotal = self.ytdChartData.reduce(0, { $0 + $1.count })
                    self.oneYearTotal = self.oneYearChartData.reduce(0, { $0 + $1.count })
                    
                    self.ytdAverage = self.ytdTotal / Calendar.current.component(.month, from: Date())
                    self.oneYearAverage = self.oneYearTotal / 12
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
