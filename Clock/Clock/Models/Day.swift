//
//  Day.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import Foundation

enum Days: String, CaseIterable, Identifiable {
  case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
  var id: Self { self }
}
