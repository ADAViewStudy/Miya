//
//  AddAlarmView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import SwiftUI

struct AddAlarmView: View {
    @State private var currentDate = Date()
    @State private var isSnoozeOn = false
    @State private var label: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())
                List {
                    HStack {
                        Text("Repeat")
                        Spacer()
                        NavigationLink(destination: RepeatView()) {
                        }
                    }
                    HStack() {
                        Text("Label")
                        Spacer()
                        TextField("Alarm", text: $label)
                            .multilineTextAlignment(.trailing)
                            
                    }
                    HStack {
                        Text("Sound")
                        Spacer()
                        NavigationLink(destination: SoundView()) {
                            
                        }
                    }
                    HStack {
                        Text("Snooze")
                        Toggle(isOn: $isSnoozeOn) {
                        }
                    }
                }
                .navigationBarItems(leading: Button("Cancel") {
                    dismiss()
                })
                .navigationBarTitle("Add alarm", displayMode: .inline)
                .navigationBarItems(trailing: Button("Save") {
                })
            }
        }
    }
}

struct AddAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlarmView()
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
