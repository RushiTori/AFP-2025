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
