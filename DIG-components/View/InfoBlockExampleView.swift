//
//  InfoBlockExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2023/09/14.
//

import SwiftUI

// MARK: - DashboardLabelStyle
struct DashboardLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
                .scaledToFit()
                .font(.caption)
            configuration.title
                .font(.caption)
        }
    }
}

// MARK: - Mille
struct MilleView: View {
    let appearance: Appearance = .light
    @Binding var accentColorSelection: Color
    let data: [DummyData]
    
    var body: some View {
        ZStack {
            // Background
            Rectangle()
                .frame(width: 270, height: 220)
                .foregroundColor(accentColorSelection.opacity(0.1))
            
            HStack(spacing: 4) {
                // Navigation
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 80, height: 190)
                        .foregroundColor(accentColorSelection.opacity(0.2))
                        .padding(4)
                    VStack(alignment: .leading,spacing: 8) {
                        if #available(macOS 13, *) {
                            Label("Label", systemImage: "basket")
                                .foregroundColor(appearance.foregroundColor)
                                .labelStyle(DashboardLabelStyle())
                        } else {
                            Label("Label", systemImage: "yensign.circle")
                                .foregroundColor(appearance.foregroundColor)
                                .labelStyle(DashboardLabelStyle())
                        }
                        Label("Label", systemImage: "creditcard")
                            .foregroundColor(appearance.foregroundColor)
                            .labelStyle(DashboardLabelStyle())
                        Label("Label", systemImage: "person.text.rectangle")
                            .foregroundColor(appearance.foregroundColor)
                            .labelStyle(DashboardLabelStyle())
                        
                    }
                    
                }
                
                VStack(alignment: .leading) {
                    Text("Dashboard")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(appearance.foregroundColor)
                        .padding(.vertical, 8)
                    
                    // Widget
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 150, height: 100)
                            .foregroundColor(.white)
                        
                        // Bar chart
                        VStack {
                            HStack {
                                Text("Headline")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(appearance.foregroundColor)
                                    .padding(.vertical, 4)
                                
                                Spacer()
                            }
                            .padding(.horizontal, 4)
                            
                            BarChart(data: data,
                                     foregroundColor: .gray)
                                .frame(width: 110)
                        }
                        .frame(width: 140, height: 90)
                    }
                    
                    Spacer()
                        .frame(height: 50)
                }
                .padding(4)
            }
        }
    }
}

// MARK: -
struct InfoBlockExampleView: View {
    let appearance: Appearance = .light
    @State private var accentColorSelection: Color = .blue
    
    let data: [DummyData]
    
    init() {
        let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy/MM/dd"
                
                self.data = [
                    DummyData(value: 10, date: dateFormatter.date(from: "2023/02/01")!),
                    DummyData(value: 12, date: dateFormatter.date(from: "2023/02/02")!),
                    DummyData(value: 9, date: dateFormatter.date(from: "2023/02/03")!),
                    DummyData(value: 11, date: dateFormatter.date(from: "2023/02/04")!),
                    DummyData(value: 13, date: dateFormatter.date(from: "2023/02/05")!),
                    DummyData(value: 8, date: dateFormatter.date(from: "2023/02/06")!),
                    DummyData(value: 6, date: dateFormatter.date(from: "2023/02/07")!),
                    DummyData(value: 14, date: dateFormatter.date(from: "2023/02/08")!)
                ]
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            MilleView(accentColorSelection: $accentColorSelection, data: data)
            
            ColorPicker("", selection: $accentColorSelection, supportsOpacity: false)
        }
    }
}

struct InfoBlockExampleView_Previews: PreviewProvider {
    static var previews: some View {
        InfoBlockExampleView()
    }
}
