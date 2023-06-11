//
//  SearchBar.swift
//  Clock
//
//  Created by 금가경 on 2023/06/11.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $text)
                    .foregroundColor(.white)
                
                if !text.isEmpty {
                    Button(action: {
                        //self.text = ""
                        text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
                //                } else {
                //                    EmptyView()
                //                }
            }
            .padding(8)
            .foregroundColor(Color(uiColor: .lightGray))
            .background(Color(uiColor: .darkGray))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}
    
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .environment(\.colorScheme, .dark)
            .accentColor(.orange)
    }
}
