//
//  CardView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct CardView: View {
    @Binding var suitRef: CardSuitType
    let suit: CardSuitType
    
    var body: some View {
        Button {
            suitRef.toggle(between: suit)
        } label: {
            VStack {
                Image(systemName: suit.symbol)
                    .font(.system(size: 48))
                    .padding(.vertical, 8)
                Text(suit.text)
            }
            .foregroundStyle(.white)
            .frame(width: 114)
            .padding(.vertical, 40)
            .background(suit.color)
            .cornerRadius(12)
            .shadow(radius: 8, y: 12)
        }
    }
}

#Preview {
    @Previewable @State var currSuit: CardSuitType = .none
    VStack {
        HStack {
            CardView(suitRef: $currSuit, suit: .spade)
            CardView(suitRef: $currSuit, suit: .heart)
        }
        if currSuit == .none {
            Text(currSuit.symbol)
                .font(.system(size: 48))
                .foregroundStyle(currSuit.color)
        } else {
            Image(systemName: currSuit.symbol)
                .font(.system(size: 48))
                .foregroundStyle(currSuit.color)
        }
    }
}
