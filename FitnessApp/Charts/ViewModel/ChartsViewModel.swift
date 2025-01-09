//
//  ChartsViewModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 08/01/25.
//

import Foundation

class ChartsViewModel: ObservableObject {
    
    @Published var mockOnemonthData = [DailyStepModel]()
    @Published var mockThreemonthData = [DailyStepModel]()
    
    @Published var oneWeekAverage = 1235
    @Published var oneWeekTotal = 8655
    
    @Published var oneMonthAverage = 0
    @Published var oneMonthTotal = 0
    
    @Published var threeMonthAverage = 0
    @Published var threeMonthTotal = 0
    
    @Published var ytdAverage = 56854
    @Published var ytdTotal = 156854
    
    @Published var oneYearAverage = 121550
    @Published var oneYearTotal = 1568544
    
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
        var mockOneMonth = mockDataForDays(days: 30)
        var mockThreeMonth = mockDataForDays(days: 90)
        DispatchQueue.main.async {
            self.mockOnemonthData = mockOneMonth
            self.mockThreemonthData = mockThreeMonth
        }
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
}
