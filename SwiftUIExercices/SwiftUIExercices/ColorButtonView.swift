//
//  ColorButtonView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct ColorButtonView: View {
    @Binding var bgColorRef: Color
    var color: Color
    var colorName: String
    
    var body: some View {
        Button {
            if (bgColorRef == .white) {
                bgColorRef = color
            } else {
                bgColorRef = .white
            }
        } label: {
            ZStack {
                HStack {
                    Image(systemName: "eyedropper.full")
                    Text(colorName)
                        .bold()
                        .font(.title2)
                }
                .foregroundStyle(.black)
            }
            .padding()
            .background(color)
            .cornerRadius(8)
        }

    }
}

#Preview {
    @Previewable @State var currSuit: Color = .white
    ZStack {
        currSuit
            .ignoresSafeArea()
        HStack {
            ColorButtonView(bgColorRef: $currSuit, color: .yellow, colorName: "This button is for yellow")
            ColorButtonView(bgColorRef: $currSuit, color: .pink, colorName: "This button isn't yellow, it's pink")
        }
    }
}
