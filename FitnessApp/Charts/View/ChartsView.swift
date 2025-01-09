//
//  HistoricDataView.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 03/01/25.
//

import SwiftUI
import Charts

enum ChartOptions: String, CaseIterable {
    case oneWeek = "1W"
    case oneMonth = "1M"
    case threeMonths = "3M"
    case yearToDate = "YTD"
    case oneYear = "1Y"
}

struct ChartsView: View {
    @StateObject var viewModel = ChartsViewModel()
    @State var selectedChart: ChartOptions = .oneWeek
    
    var body: some View {
        VStack {
            Text("Charts")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            ZStack {
                switch selectedChart {
                case .oneWeek:
                    Chart {
                        ForEach(viewModel.mockChartData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .oneMonth:
                    Chart {
                        ForEach(viewModel.mockOnemonthData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .threeMonths:
                    Chart {
                        ForEach(viewModel.mockThreemonthData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .yearToDate:
                    EmptyView()
                case .oneYear:
                    Chart {
                        ForEach(viewModel.mockChartData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                }
                
            }
            .foregroundColor(.green)
            .frame(maxHeight: 350)
            .padding(.horizontal)
            
            HStack {
                ForEach(ChartOptions.allCases, id: \.rawValue) { option in
                    Button(option.rawValue) {
                        withAnimation {
                            selectedChart = option
                        }
                    }
                    .padding()
                    .foregroundColor(selectedChart == option ? .white : .green)
                    .background(selectedChart == option ? .green : .clear)
                    .cornerRadius(10)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ChartsView()
}
