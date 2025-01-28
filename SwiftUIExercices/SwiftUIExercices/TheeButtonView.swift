//
//  TheeButtonView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct TheeButtonView: View {
    @State var bgColor: Color = .white
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            HStack {
                ColorButtonView(bgColorRef: $bgColor, color: .red, colorName: "Red")
                ColorButtonView(bgColorRef: $bgColor, color: .blue, colorName: "Blue")
                ColorButtonView(bgColorRef: $bgColor, color: .green, colorName: "Green")
            }
        }
    }
}

#Preview {
    TheeButtonView()
}
