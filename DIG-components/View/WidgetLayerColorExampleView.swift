//
//  WidgetLayerColorExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2023/01/12.
//

import SwiftUI

// MARK: -
extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}

// MARK: -
enum Appearance: CaseIterable {
    case light
    case dark
    
    var foregroundColor: Color {
        switch self {
        case .light:
            return .black
        case .dark:
            return .white
        }
    }
}

// MARK: -
struct WidgetLayerColorView: View {
    let backgroundColor: Color
    let widgetColor: Color
    let widgetOnWidgetColor: Color
    let appearance: Appearance
    
    var body: some View {
        ZStack {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 270, height: 220)
                    .foregroundColor(backgroundColor)
                Text("Background")
                    .font(.caption)
                    .foregroundColor(appearance.foregroundColor)
                    .padding(8)
            }
            
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 220, height: 160)
                    .foregroundColor(widgetColor)
                
                Text("Widget")
                    .font(.caption)
                    .foregroundColor(appearance.foregroundColor)
                    .padding(8)
            }
            
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 170, height: 105)
                    .foregroundColor(widgetOnWidgetColor)
                
                Text("Widget on Widget")
                    .font(.caption)
                    .foregroundColor(appearance.foregroundColor)
                    .padding(8)
            }
            
        }
    }
}

struct WidgetLayerColorExampleView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Light appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                WidgetLayerColorView(
                    backgroundColor: Color(0xf2f2f7),
                    widgetColor: Color(0xffffff),
                    widgetOnWidgetColor: Color(0xdfdfe4),
                    appearance: .light)
            }
            .padding(.horizontal, 40)
            
            VStack {
                Text("Dark appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                
                WidgetLayerColorView(
                    backgroundColor: Color(0x000000),
                    widgetColor: Color(0x1c1c1e),
                    widgetOnWidgetColor: Color(0x39393d),
                    appearance: .dark)
            }
            .padding(.horizontal, 40)
        }
    }
}

// MARK: -
struct WidgetLayerColorExampleView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetLayerColorExampleView()
    }
}
