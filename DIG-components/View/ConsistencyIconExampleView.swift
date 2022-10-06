//
//  ConsistencyIconExampleView.swift
//  DIG-components
//


import SwiftUI

struct ConsistencyIconExampleView: View {
    var body: some View {
        HStack {
            // Good
            VStack {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Label("Camera", systemImage: "camera.fill")
                        .font(.title)
                        .fontWeight(.black)
                    Label("Like", systemImage: "heart.fill")
                        .font(.title)
                        .fontWeight(.light)
                    Label("Mail", systemImage: "envelope.fill")
                        .font(.title)
                        .fontWeight(.heavy)
                    Label("Alarm", systemImage: "alarm.fill")
                        .font(.title)
                        .fontWeight(.regular)
                }
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
            
            // Bad
            VStack {
                Image(systemName: "xmark.diamond.fill")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Label("Camera", systemImage: "camera.fill")
                        .font(.title)
                        .fontWeight(.medium)
                    Label("Like", systemImage: "heart.fill")
                        .font(.title)
                        .fontWeight(.medium)
                    Label("Mail", systemImage: "envelope.fill")
                        .font(.title)
                        .fontWeight(.medium)
                    Label("Alarm", systemImage: "alarm.fill")
                        .font(.title)
                        .fontWeight(.medium)
                }
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
        }
    }
}

struct ConsistencyIconExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ConsistencyIconExampleView()
    }
}
