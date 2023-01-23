//
//  OpticalCentering.swift
//  DIG-components
//

import SwiftUI

struct OpticalCenteringExampleView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Before optical center")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                    Image(systemName: "arrow.down.to.line")
                        .resizable()
                        .scaledToFit()
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                }
                
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
            
            VStack {
                Text("After optical center")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                    
                    Image(systemName: "arrow.down.to.line")
                        .resizable()
                        .scaledToFit()
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 3)
                        .frame(width: 100, height: 100)
                }
                
                
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
        }
    }
}

struct OpticalCentering_Previews: PreviewProvider {
    static var previews: some View {
        OpticalCenteringExampleView()
    }
}
