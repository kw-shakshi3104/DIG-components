//
//  SectionBlockExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2023/09/15.
//

import SwiftUI

// MARK: - RingView
struct RingView: View {
    var foregroundColor: Color
    var value: Float
    
    var lineWidth = 7.0
    var size: CGFloat = 50
    
    var body: some View {
        ZStack {
            // background
            Circle()
                .stroke(lineWidth: lineWidth)
                .opacity(0.3)
                .foregroundColor(.gray)
            
            // ring
            Circle()
            .trim(from: 0.0, to: CGFloat(value))
            .stroke(AngularGradient(
                colors: [foregroundColor, foregroundColor],
                center: .center,
                startAngle: .degrees(0),
                endAngle: .degrees(360 * Double(value))),
                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round)
            )
            .rotationEffect(Angle(degrees: 270.0))
        }
        .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - SectionBlockView
struct SectionBlockView: View {
    let sectionTitle: String
    let sectionColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 95, height: 140)
                .foregroundColor(sectionColor.opacity(0.2))
            
            VStack(alignment: .leading) {
                Text(sectionTitle)
                    .font(.body)
                    .fontWeight(.medium)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 80, height: 90)
                        .foregroundColor(.white)
//                    Spacer().frame(width: 80, height: 90)
                    
                    
                    RingView(foregroundColor: sectionColor, value: 0.8)
                }
            }
        }
    }
}

// MARK: -
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
                    SectionBlockView(sectionTitle: "Topic", sectionColor: .blue)
                    
                    SectionBlockView(sectionTitle: "Topic", sectionColor: .green)
                    
                    SectionBlockView(sectionTitle: "Topic", sectionColor: .purple)
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
