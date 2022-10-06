//
//  OpticalCentering.swift
//  DIG-components
//
//  Created by 小林慧 on 2022/10/06.
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
                
                Image(systemName: "arrow.down.to.line")
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100)
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
            
            VStack {
                Text("After optical center")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                
                Image(systemName: "arrow.down.to.line")
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.bold)
                    .padding(.bottom, 3)
                    .frame(width: 100, height: 100)
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
