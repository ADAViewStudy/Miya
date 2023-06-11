//
//  WorldClock.swift
//  Clock
//
//  Created by 금가경 on 2023/05/30.
//

import Foundation

struct WorldClock : Identifiable, Hashable {
    var id = UUID()
    var time: Date
    var currentLocation : String
    
    init(time: Date) {
        self.time = Date()
        self.currentLocation = TimeZone.current.identifier
            .components(separatedBy: "/")
            .last!
    }
}
