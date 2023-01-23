//
//  WidgetLabelColorExample.swift
//  DIG-components
//

import SwiftUI

struct WidgetLabelColorView: View {
    let primaryColor: Color
    let secondaryColor: Color
    let tertiaryColor: Color
    let quaternaryColor: Color
    
    let appearance: Appearance
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 270, height: 220)
                .foregroundColor(appearance.backgroundColor)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 220, height: 160)
                    .foregroundColor(appearance.widgetColor)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Primary")
                        .font(.caption)
                        .foregroundColor(primaryColor)
                    
                    Text("Secondary")
                        .font(.caption)
                        .foregroundColor(secondaryColor)
                    
                    
                    Text("Tertiary")
                        .font(.caption)
                        .foregroundColor(tertiaryColor)
                    
                    
                    Text("Quaternary")
                        .font(.caption)
                        .foregroundColor(quaternaryColor)
                }
                .padding(16)
            }
        }
    }
}

struct WidgetLabelColorExampleView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Light appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                WidgetLabelColorView(
                    primaryColor: Color(0x000000),
                    secondaryColor: Color(0x8a8a8e),
                    tertiaryColor: Color(0xc4c4c6),
                    quaternaryColor: Color(0xdcdcdd),
                    appearance: .light
                )
            }
            .padding(.horizontal, 40)
            
            VStack {
                Text("Dark appearance")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                
                WidgetLabelColorView(
                    primaryColor: Color(0xffffff),
                    secondaryColor: Color(0x989899),
                    tertiaryColor: Color(0x5a5a5e),
                    quaternaryColor: Color(0x404044),
                    appearance: .dark
                )
            }
            .padding(.horizontal, 40)
        }
    }
}

struct WidgetLabelColorExampleView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetLabelColorExampleView()
    }
}
