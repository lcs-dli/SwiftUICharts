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
        Text("")
    }
}

#Preview {
    LineChartView()
}
