//
//  RepeatView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import SwiftUI

struct RepeatView: View {
    
    @State private var selectedDay = Days.Monday
    
    var body: some View {
        NavigationView {
            List {
                Picker("", selection: $selectedDay) {
                    ForEach(Days.allCases) {
                        Text("Every \($0.rawValue)")
                    }
                }
            }
            .pickerStyle(.inline)
        }
        .navigationBarTitle("Repeat", displayMode: .inline)
    }
}

struct RepeatView_Previews: PreviewProvider {
    static var previews: some View {
        RepeatView()
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
