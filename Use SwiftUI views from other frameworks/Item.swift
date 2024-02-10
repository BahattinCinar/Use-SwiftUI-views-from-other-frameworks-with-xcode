//
//  Item.swift
//  Use SwiftUI views from other frameworks
//
//  Created by Behaüddin Çınar on 9.02.2024.
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
