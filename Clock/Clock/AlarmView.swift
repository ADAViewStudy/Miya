//
//  AlarmView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/16.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Tab Content 1").tabItem { Label("World Clock", systemImage: "globe")
                }
                AlarmListView().tabItem { Label("Alarm", systemImage: "alarm.fill")
                }
                Text("Tab Content 2").tabItem { Label("Stopwatch", systemImage: "stopwatch.fill")
                }
                Text("Tab Content 2").tabItem { Label("Timer", systemImage: "timer")
                }
            }
        }
    }
    
    struct AlarmView_Previews: PreviewProvider {
        static var previews: some View {
            AlarmView()
                .environment(\.colorScheme, .dark)
        }
    }
}
