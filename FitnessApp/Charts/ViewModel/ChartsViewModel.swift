//
//  ChartsViewModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 08/01/25.
//

import Foundation

class ChartsViewModel: ObservableObject {
    
    var mockChartData = [
        DailyStepModel(date: Date(), count: 15000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), count: 9775),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), count: 8000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), count: 12000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), count: 10000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), count: 7000),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), count: 5000)
    ]
}
