//
//  FruitButtonView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct FruitButtonView: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            let wh: CGFloat = 128
            let pad: CGFloat = 16
            Image(fruit.img)
                .resizable()
                .scaledToFill()
                .frame(width: wh - pad, height: wh - pad)
                .padding(pad)
                .background(fruit.backCol)
                .cornerRadius(24)
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 12) {
                Text(fruit.name)
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                Text(fruit.desc)
                    .foregroundStyle(.gray)
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
            }
            .bold()
            
            VStack {
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FruitButtonView(fruit: fruits[0])
}
