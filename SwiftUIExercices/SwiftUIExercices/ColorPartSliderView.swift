//
//  ColorPartSliderView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct ColorPartSliderView: View {
    @Binding var colorPart: Double
    var partName: String
    var body: some View {
        VStack {
            HStack {
                Text("0")
                Slider(value: $colorPart, in: 0...255)
                Text("255")
            }
            Text("\(partName): \(Int(colorPart))")
        }
        .bold()
        .font(.title3)
    }
}

#Preview {
    @Previewable @State var backGray: Double = 50
    ZStack {
        Color(red: backGray / 255, green: backGray / 255, blue: backGray / 255, opacity: 1)
            .ignoresSafeArea()
        
        ColorPartSliderView(colorPart: $backGray, partName: "Gray Scale")
            .padding(.horizontal, 32)
    }
}
