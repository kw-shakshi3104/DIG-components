//
//  ContentView.swift
//  DIG-components
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NonPerceptibleColorExmapleView()
                .tabItem {
                    Label("Color", systemImage: "paintpalette")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
