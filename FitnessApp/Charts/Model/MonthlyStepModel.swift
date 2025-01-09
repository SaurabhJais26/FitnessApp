//
//  MonthlyStepModel.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 09/01/25.
//

import Foundation

struct MonthlyStepModel: Identifiable {
    let id = UUID()
    let date: Date
    let count: Int
}
