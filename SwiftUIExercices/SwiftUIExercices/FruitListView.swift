//
//  FruitListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct FruitListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView {
                    ForEach(fruits) { fruit in
                        NavigationLink {
                            FruitListChildView(fruit: fruit)
                        } label: {
                            FruitButtonView(fruit: fruit)
                        }
                    }
                }
            }
            .navigationTitle("Les Fruits")
        }
    }
}

#Preview {
    FruitListView()
}
