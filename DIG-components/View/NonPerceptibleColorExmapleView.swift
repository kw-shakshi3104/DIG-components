//
//  NonPerceptibleColorExmapleView.swift
//  DIG-components
//

import SwiftUI

struct RectangleTextView: View {
    var rectangleForegroundColor: Color = .white
    var textForegroundColor: Color = .black
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(rectangleForegroundColor)
            Text("Sales Summary")
                .foregroundColor(textForegroundColor)
                .fontWeight(.bold)
                .font(.title2)
        }
        .frame(width: 300, height: 60)
    }
}

struct NonPerceptibleColorExmapleView: View {
    let backgroundWhite = Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1))
    let backgroundBlack = Color(#colorLiteral(red: 0.0834152922, green: 0.0834152922, blue: 0.0834152922, alpha: 1))
    let nonPerceptibleWhite = Color(#colorLiteral(red: 0.9058823529, green: 0.9043522477, blue: 0.9043522477, alpha: 1))
    let nonPerceptibleBlack = Color(#colorLiteral(red: 0.2946455479, green: 0.2946455479, blue: 0.2946455479, alpha: 1))
    
    var body: some View {
        HStack {
            // Good
            VStack {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .padding()
                
                RectangleTextView(
                    rectangleForegroundColor: backgroundWhite,
                    textForegroundColor: .black
                )
                
                RectangleTextView(
                    rectangleForegroundColor: backgroundBlack,
                    textForegroundColor: .white
                )
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
                
                RectangleTextView(
                    rectangleForegroundColor: backgroundWhite,
                    textForegroundColor: nonPerceptibleWhite
                )
                
                RectangleTextView(
                    rectangleForegroundColor: backgroundBlack,
                    textForegroundColor: nonPerceptibleBlack
                )
            }
            .frame(width: 300)
            .padding(.horizontal, 20)
        }
    }
}

struct NonPerceptibleColorExmapleView_Previews: PreviewProvider {
    static var previews: some View {
        NonPerceptibleColorExmapleView()
    }
}
