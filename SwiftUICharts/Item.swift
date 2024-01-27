//
//  Item.swift
//  SwiftUICharts
//
//  Created by David Li on 2024-01-27.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
