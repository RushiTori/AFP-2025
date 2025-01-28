//
//  CounterView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

struct ButtonBody : View {
    var text: String
    var backCol: Color
    var textCol: Color
    
    var body: some View {
        ZStack {
            Text(text)
                .bold()
                .foregroundStyle(textCol)
                .padding()
                .background(backCol)
                .cornerRadius(8)
                .shadow(radius: 12, y: 16)
        }
    }
}

struct CounterView: View {
    @State var counter: Int = 0

    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()

            VStack {
                Text("Counter : \(counter)")
                    .foregroundStyle(.white)
                    .fontWeight(.black)
                    .fontWidth(.expanded)
                    .font(.largeTitle)

                HStack {
                    Button {
                        counter += 1
                    } label: {
                        ButtonBody(text: "Incrémenter", backCol: .white, textCol: .black)
                    }

                    Button {
                        counter = 0
                    } label: {
                        ButtonBody(text: "Réinitialiser", backCol: .red, textCol: .white)
                    }
                }
            }
        }
    }
}

#Preview {
    CounterView()
}
