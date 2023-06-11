//
//  WorldClockView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/29.
//

import SwiftUI

struct WorldClockView: View {
    @State private var isAddWorldClockViewPresented = false
    @State var worldClockArr : [WorldClock] = [WorldClock(time: Date())]
    @State var timeDifference : Int = 0
    
    var timeFormatter: DateFormatter {
           let formatter = DateFormatter()
           formatter.dateFormat = "h:mm"
           return formatter
       }
    
    var maFormatter: DateFormatter {
           let formatter = DateFormatter()
           formatter.dateFormat = "a"
           return formatter
       }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(worldClockArr, id: \.self) { worldClock in
                    HStack {
                        VStack {
                            HStack {
                                Text("Today, +\(timeDifference)HRS")
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            HStack {
                                Text("\(worldClock.currentLocation)")
                                    .font(.system(size: 30, weight: .regular))
                                Spacer()
                            }
                        }
                        Spacer()
                        Text("\(worldClock.time, formatter: timeFormatter)")
                            .font(.system(size: 55, weight: .light))
                        Text("\(worldClock.time, formatter: maFormatter)")
                            .font(.system(size: 30))
                    }
                }
                .onDelete { worldClockArr.remove(atOffsets: $0) }
            }
            .navigationTitle("World Clock")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: Button(action: {
                self.isAddWorldClockViewPresented = true
            }, label: {
                Image(systemName: "plus")
            }))
            .listStyle(.plain)
            
        }
        .sheet(isPresented: self.$isAddWorldClockViewPresented) {
            AddWorldClockView()
        }
    }
}
    

struct WorldClockView_Previews: PreviewProvider {
    static var previews: some View {
        WorldClockView()
    }
}
