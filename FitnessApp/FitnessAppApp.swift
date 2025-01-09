//
//  FitnessAppApp.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 03/01/25.
//

import SwiftUI
import RevenueCat

@main
struct FitnessAppApp: App {
    
    init() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "appl_EHxLOeUJNhsdmpuSKTjQNgfHFhN")
    }
    
    var body: some Scene {
        WindowGroup {
            FitnessTabView()
        }
    }
}
