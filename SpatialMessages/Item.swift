//
//  Item.swift
//  SpatialMessages
//
//  Created by Michał Talaga on 09/04/2025.
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
