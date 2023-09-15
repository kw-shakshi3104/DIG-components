//
//  ContentView.swift
//  DIG-components
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NonPerceptibleColorExmapleView()
                
            ConsistencyIconExampleView()
            
            OpticalCenteringExampleView()
            
            HeteropticsExampleView()
            
            PositiveNagativeSymbolExampleView()
            
            WidgetLayerColorExampleView()
            
            WidgetLabelColorExampleView()
            
            WidgetLayerAccentColorExample()
            
            AccentColorExampleView()
            
            InfoBlockExampleView()
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
