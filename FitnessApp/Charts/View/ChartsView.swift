//
//  HistoricDataView.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 03/01/25.
//

import SwiftUI
import Charts

struct ChartsView: View {
    @StateObject var viewModel = ChartsViewModel()
    
    var body: some View {
        VStack {
            Text("Charts")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Chart {
                ForEach(viewModel.mockChartData) { data in
                    BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                }
            }
            .foregroundColor(.green)
            .frame(maxHeight: 350)
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ChartsView()
}
