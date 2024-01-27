//
//  ContentView.swift
//  SwiftUICharts
//
//  Created by David Li on 2024-01-27.
//
import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Day", "Monday"),
                y: .value("Steps", 6019)
            )

            BarMark(
                x: .value("Day", "Tuesday"),
                y: .value("Steps", 7200)
            )
        }
    }
}

#Preview {
    ContentView()
}
