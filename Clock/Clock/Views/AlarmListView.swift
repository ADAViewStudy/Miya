//
//  AlarmListView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/16.
//

import SwiftUI


struct AlarmListView: View {
    @State private var isAlarmOn = false
    @State private var isAddAlarmViewPresented = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Label("Sleep | Wake Up", systemImage: "bed.double.fill")
                    .font(.headline)
                    .foregroundColor(.white)) {
                        HStack {
                            VStack(alignment: .leading) {
                                HStack(alignment: .firstTextBaseline) {
                                    Text("9:00")
                                        .font(.system(size: 55, weight: .light))
                                    Text("AM")
                                        .font(.system(size: 30))
                                }
                                Text("Tomorrow Morning")
                                    .font(.callout)
                            }
                            Spacer()
                            Button(action: {}, label: {
                                ZStack {
                                    Capsule()
                                        .foregroundColor(Color(uiColor: .darkGray))
                                    Text("CHANGE")
                                        .foregroundColor(.orange)
                                        .bold()
                                }
                            })
                            .frame(width: 90, height: 30)
                        }
                    }
                Section(header: Text("Other")
                    .font(.headline)
                    .foregroundColor(.white)) {
                        HStack {
                            VStack(alignment: .leading) {
                                HStack(alignment: .firstTextBaseline) {
                                    Text("9:00")
                                        .font(.system(size: 55, weight: .light))
                                    Text("AM")
                                        .font(.system(size: 30))
                                }
                                Text("Alarm")
                                    .font(.callout)
                            }
                            .foregroundColor(isAlarmOn ? .white : .gray)
                            Spacer()
                            Toggle(isOn: $isAlarmOn) {
                            }
                        }
                    }
            }
            .navigationTitle("Alarm")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: Button(action: {
                self.isAddAlarmViewPresented = true
            }, label: {
                Image(systemName: "plus")
            }))
            .listStyle(.plain)
        }
        .sheet(isPresented: self.$isAddAlarmViewPresented) {
            AddAlarmView()
                .environment(\.colorScheme, .dark)
                .accentColor(.orange)
        }
    }
}

struct AlarmListView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmListView()
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
