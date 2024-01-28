//
//  LineChartView.swift
//  SwiftUICharts
//
//  Created by David Li on 2024-01-28.
//

import SwiftUI
import Charts

struct LineChartView: View {
    
    let chartData = [(city: "HongKong", data: hkWeatherData), (city: "London", data: londonWeatherData), (city: "Taipei", data: taipeiWeatherData)]
    
    var body: some View {
        VStack{
            Chart{
                ForEach(chartData, id: \.city){series in
                    ForEach(series.data){ item in
                        LineMark(
                        x: .value("Month", item.date),
                            
                        y: .value("Temperature", item.temperature)
                        )
                        .foregroundStyle(by: .value("city", series.city))
                    }
                }
                
            }
            .frame(height: 300)
            .chartXAxis{
                AxisMarks(values: .stride(by: .month)){ value in
                    AxisGridLine()
                    AxisValueLabel(format: .dateTime.month(.defaultDigits))
                }
            }
            .chartYAxis{
                AxisMarks(position: .leading)
            }
            .chartPlotStyle(){plotArea in
                plotArea
                    .background(.blue.opacity(0.1))
            }
        }
    }
}

#Preview {
    LineChartView()
}
