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
            Image(fruit.img)
                .resizable()
                .scaledToFit()
                .frame(width: 128 - 8, height: 128 - 8)
                .padding(8)
                .background(fruit.backCol)
                .cornerRadius(24)
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 12) {
                Text(fruit.name)
                    .font(.largeTitle)
                Text(fruit.desc)
                    .foregroundStyle(.gray)
                    .font(.caption2)
            }
            .bold()
            
            VStack {
                Spacer()
                Image(systemName: "chevron.right")
                Spacer()
            }
        }
    }
}

#Preview {
    FruitButtonView(fruit: fruits[0])
}
