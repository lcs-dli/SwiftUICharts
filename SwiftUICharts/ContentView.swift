//
//  ContentView.swift
//  SwiftUICharts
//
//  Created by David Li on 2024-01-27.
//
import SwiftUI
import Charts

struct ContentView: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [ 10531, 6019, 7200, 8311, 7403, 6503, 9230 ]

    
    var body: some View {
        Chart {
            ForEach(weekdays.indices, id: \.self){ index in
                BarMark(x: .value("Steps", steps[index]), y: .value("Day", weekdays[index]))
                    .foregroundStyle(by: .value("day", weekdays[index]))
                    .annotation{
                        Text("\(steps[index])")
                    }
            }
        }
       
        
        
    }
}

#Preview {
    ContentView()
}
