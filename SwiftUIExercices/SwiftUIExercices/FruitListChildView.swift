//
//  FruitListChildView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct FruitListChildView: View {
    var fruit: Fruit
    var body: some View {
        VStack {
            let wh: CGFloat = 128
            let pad: CGFloat = 16
            Image(fruit.img)
                .resizable()
                .scaledToFill()
                .frame(width: wh - pad, height: wh - pad)
                .padding(pad)
                .background(fruit.backCol)
                .cornerRadius(24)
            Text(fruit.name)
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.black)
            Text(fruit.desc)
                .padding( 32)
                .foregroundStyle(.gray)
            
        }
    }
}
