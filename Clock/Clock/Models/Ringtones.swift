//
//  Ringtones.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import Foundation

enum Ringtones: String, CaseIterable, Identifiable {
    case Rader, Apex, Beacon
    var id: Self { self }
}
