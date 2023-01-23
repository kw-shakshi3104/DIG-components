//
//  PositiveNagativeSymbolExampleView.swift
//  DIG-components
//

import SwiftUI

struct PositiveNagativeSymbolExampleView: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "checkmark.square.fill")
                        .foregroundColor(.green)
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                    Text("OK")
                        .font(.largeTitle)
                }
                .padding()
                
                HStack {
                    Image(systemName: "xmark.diamond.fill")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                    Text("Cancel")
                        .font(.largeTitle)
                }
                .padding()
            }
        }
    }
}

struct PositiveNagativeSymbolExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PositiveNagativeSymbolExampleView()
    }
}
