//
//  ContentView.swift
//  SwiftUI Design
//
//  Created by Belal on 30/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
                   LazyHStack {
                       ForEach(0..<10, id: \.self) { item in
                           CardView(isSelected: item == 0)
                               .shadow(radius: 10)
                           
                       }
                   }
               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
