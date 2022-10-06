//
//  HeteropticsExampleView.swift
//  DIG-components
//
//  Created by 小林慧 on 2022/10/06.
//

import SwiftUI

struct HeteropticsExampleView: View {
    var body: some View {
        HStack {
            // Good
            VStack {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "square.fill")
                        .font(.largeTitle)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "circle.fill")
                        .font(.largeTitle)
                        .frame(width: 30, height: 30)
                        .padding()
                    Image(systemName: "diamond.fill")
                        .font(.largeTitle)
                        .frame(width: 30, height: 30)
                        .padding()
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
                
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    Image(systemName: "square.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    Image(systemName: "diamond.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                }
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
        }
    }
}

struct HeteropticsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HeteropticsExampleView()
    }
}
