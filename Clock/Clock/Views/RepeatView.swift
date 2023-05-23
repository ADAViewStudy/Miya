//
//  RepeatView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import SwiftUI

struct RepeatView: View {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    @Binding var selectedDays : Set<String>
    
    var body: some View {
        NavigationView {
            List(days, id: \.self) { day in
                Button(action: {
                    if selectedDays.contains(day) {
                        selectedDays.remove(day)
                    }
                    else {
                        selectedDays.insert(day)
                    }
                }) {
                    HStack {
                        Text("Every \(day)")
                            .foregroundColor(.white)
                        Spacer()
                        if selectedDays.contains(day) {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Repeat", displayMode: .inline)
    }
}

struct RepeatView_Previews: PreviewProvider {
    @State static var selectedDays = Set<String>()

    static var previews: some View {
        RepeatView(selectedDays: $selectedDays)
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
