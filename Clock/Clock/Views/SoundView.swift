//
//  SoundView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/17.
//

import SwiftUI

struct SoundView: View {
    @State private var selectedRingtone = Ringtones.Rader
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: VibrationView()) {
                    Text("Vibration")
                }
                Section(header: Text("SONGS")) {
                    NavigationLink(destination: VibrationView()) {
                        Text("Pick a song")
                    }
                }
                Section(header: Text("RINGTONES")) {
                    Picker(selection: $selectedRingtone, label: EmptyView()) {
                        ForEach(Ringtones.allCases) { ringtone in
                            Text(ringtone.rawValue)
                        }
                    }
                    .pickerStyle(.inline)
                }
                Text("None")
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Sound")
        }
        .accentColor(.orange)
        .environment(\.colorScheme, .dark)
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
