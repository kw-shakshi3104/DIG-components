//
//  SectionBlockExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2023/09/15.
//

import SwiftUI

struct SectionBlockExampleView: View {
    let accentColorSelection: Color = .blue
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 360, height: 220)
                .foregroundColor(accentColorSelection.opacity(0.1))
            
            VStack(alignment: .leading) {
                Text("Dashboard")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack(spacing: 16) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 95, height: 140)
                        .foregroundColor(.blue.opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 95, height: 140)
                        .foregroundColor(.green.opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 95, height: 140)
                        .foregroundColor(.purple.opacity(0.2))
                }
            }
        }
    }
}

struct SectionBlockExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionBlockExampleView()
    }
}
