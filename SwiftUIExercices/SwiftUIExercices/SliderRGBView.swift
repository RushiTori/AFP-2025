//
//  SliderRGBView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI



struct SliderRGBView: View {
    @State var redPart: Double = 255.0
    @State var greenPart: Double = 255.0
    @State var bluePart: Double = 255.0
    var body: some View {
        ZStack {
            Color(UIColor(red: redPart / 255.0, green: greenPart / 255.0, blue: bluePart / 255.0, alpha: 1.0))
            VStack {
                Spacer()
                HStack {
                    ColorPartSliderView(colorPart: $redPart, partName: "Red")
                    ColorPartSliderView(colorPart: $greenPart, partName: "Green")
                    ColorPartSliderView(colorPart: $bluePart, partName: "Blue")
                }
            }
        }
    }
}

#Preview {
    SliderRGBView()
}
