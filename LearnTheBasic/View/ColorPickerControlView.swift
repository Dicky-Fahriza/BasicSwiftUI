//
//  ColorPickerControlView.swift
//  LearnTheBasic
//
//  Created by Dicky Fahriza on 05/04/24.
//

import SwiftUI

struct ColorPickerControlView: View {
    @State private var selectedColor:
        Color = .red
    
    var body: some View {
        VStack {
        ColorPicker(
            "select a color", selection: $selectedColor, supportsOpacity: true
        )
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(selectedColor)
                .frame(height: 100)
                
                
            
        }
        .padding()
    }
}

#Preview {
    ColorPickerControlView()
}
