//
//  WidgetLayerAccentColorExample.swift
//  DIG-components
//

import SwiftUI

// MARK: -
struct WidgetLayerAccentColorView: View {
    let accentColor: Color
    let appearance: Appearance
    
    var body: some View {
        switch appearance {
        case .light:
            WidgetLayerColorView(
                backgroundColor: accentColor.opacity(0.1),
                widgetColor: .white,
                widgetOnWidgetColor: accentColor.opacity(0.4),
                appearance: appearance)
        case .dark:
            WidgetLayerColorView(
                backgroundColor: .black,
                widgetColor: accentColor.opacity(0.3),
                widgetOnWidgetColor: accentColor.opacity(0.4),
                appearance: appearance)
        }
    }
}

// MARK: -
struct WidgetLayerAccentColorExample: View {
    @State private var accentColorSelection: Color = .blue
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            WidgetLayerAccentColorBaseView(accentColor: $accentColorSelection)
                
            ColorPicker("", selection: $accentColorSelection, supportsOpacity: false)
        }
    }
}

// MARK: -
struct WidgetLayerAccentColorBaseView: View {
    @Binding var accentColor: Color
    
    var body: some View {
        HStack {
            VStack {
                Text("Light appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                WidgetLayerAccentColorView(
                    accentColor: accentColor,
                    appearance: .light
                )
            }
            .padding(.horizontal, 40)
            
            VStack {
                Text("Dark appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                
                WidgetLayerAccentColorView(
                    accentColor: accentColor,
                    appearance: .dark
                )
            }
            .padding(.horizontal, 40)
        }
    }
}

struct WidgetLayerAccentColorExample_Previews: PreviewProvider {
    static var previews: some View {
        WidgetLayerAccentColorExample()
    }
}
