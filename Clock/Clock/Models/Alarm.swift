//
//  Alarm.swift
//  Clock
//
//  Created by 금가경 on 2023/05/24.
//

import Foundation

struct Alarm : Identifiable{
    var id = UUID()
    var time: Date
    var cycle: [String]
    var label: String
    var sound: String
    var snooze: Bool
    
    init(time: Date, cycle: [String], label: String, sound: String, snooze: Bool) {
        self.time = Date()
        self.cycle = cycle
        self.label = label
        self.sound = sound
        self.snooze = false
    }
}
