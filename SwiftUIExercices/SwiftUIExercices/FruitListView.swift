//
//  FruitListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct FruitListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Les Fruits")
                .bold()
                .foregroundStyle(.gray)
                .font(.largeTitle)
            
            ScrollView {
                ForEach(fruits) { fruit in
                    FruitButtonView(fruit: fruit)
                }
            }
        }
        .padding()
    }
}

#Preview {
    FruitListView()
}
