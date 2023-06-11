//
//  AddWorldClockView.swift
//  Clock
//
//  Created by 금가경 on 2023/05/29.
//

import SwiftUI

struct AddWorldClockView: View {
    @State var timeDifference : Int = 0
    @State private var searchText = ""

    let timeZones = TimeZone.knownTimeZoneIdentifiers.sorted()
    
    var body: some View {
        VStack {
            Text("Choose a City")
                .font(.system(size: 14))
            
            HStack {
                SearchBar(text: $searchText)
                Button("Cancel") {
                }
                .padding(.trailing, 20)
            }

            List(timeZones, id: \.self) { timeZone in
                VStack(alignment: .leading) {
                    let city = timeZone
                        .split(separator: "/")
                        .last
                    Text(city ?? "")
                        .font(.headline)
                    //                    if let abbreviation = TimeZone(identifier: timeZone)?.abbreviation(),
                    //                       let seconds = TimeZone(identifier: timeZone)?.secondsFromGMT() {
                    //                        Text("Abbreviation: \(abbreviation)")
                    //                            .font(.subheadline)
                    //                        Text("Seconds from GMT: \(seconds)")
                    //                            .font(.subheadline)
                    //                    }
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct AddWorldClockView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorldClockView()
    }
}
