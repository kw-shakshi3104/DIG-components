//
//  AccentColorExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2023/09/14.
//

import SwiftUI
import Charts

// MARK: - Bar chart
struct DummyData: Identifiable {
    var value: Int
    var date: Date
    var id = UUID()
}

@available(iOS 16, macOS 13, *)
struct BarChart: View {
    var data: [DummyData]
    let foregroundColor: Color
    
    var body: some View {
        VStack {
            Chart {
                barMarks()
                    .foregroundStyle(foregroundColor)
            }
            .chartLegend(.hidden)
            .chartXAxis(.hidden)
            .chartYAxis(.hidden)
        }
    }
    
    func barMarks() -> some ChartContent {
        return ForEach(data, id: \.id) { datum in
            BarMark(x: .value("date", datum.date),
                    y: .value("value", datum.value))
        }
    }
}

// MARK: -
struct AccentColorExampleView: View {
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
        ZStack(alignment: .topTrailing) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 270, height: 220)
                        .foregroundColor(accentColorSelection.opacity(0.1))
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 120, height: 28)
                                    .foregroundColor(accentColorSelection.opacity(0.2))
                                
                                Label("Label", systemImage: "yensign.circle")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .padding(.horizontal, 10)
                            }
                            
                            Label("Label", systemImage: "bag")
                                .font(.callout)
                                .fontWeight(.medium)
                                .padding(.horizontal, 10)
                                .frame(height: 30)
                            
                            Label("Label", systemImage: "person.circle")
                                .font(.callout)
                                .fontWeight(.medium)
                                .padding(.horizontal, 10)
                                .frame(height: 30)
                        }
                        
                        VStack {
                            Text("Dashboard")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                                .frame(width: 100, height: 160)
                        }
                    }
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 270, height: 220)
                        .foregroundColor(accentColorSelection.opacity(0.1))
                    
                    VStack(spacing: 16) {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 80)
                                .foregroundColor(.white)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Image(systemName: "yensign.circle")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(accentColorSelection)
                                    Text("Headline")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(accentColorSelection)
                                }
                                Text("Number")
                                    .font(.title)
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, 20)
                        }
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 80)
                                .foregroundColor(.white)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Text("Headline")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(accentColorSelection)
                                }
                                
                                BarChart(data: data, foregroundColor: accentColorSelection)
                                    .frame(width: 150, height: 40)
                                    .padding(.horizontal, 10)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                }
                .padding(.horizontal, 30)
            }
            .padding(40)
            
            ColorPicker("", selection: $accentColorSelection, supportsOpacity: false)
        }
    }
}

struct AccentColorExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AccentColorExampleView()
    }
}
