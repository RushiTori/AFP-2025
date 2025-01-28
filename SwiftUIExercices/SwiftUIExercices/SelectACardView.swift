//
//  SelectACardView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

struct SelectACardView: View {
    @State var currSuit: CardSuitType = .none
    
    var body: some View {
        VStack {
            HStack {
                CardView(suitRef: $currSuit, suit: .spade)
                    .padding()
                CardView(suitRef: $currSuit, suit: .heart)
                    .padding()
            }
            
            if currSuit == .none {
                Text(currSuit.symbol)
                    .bold()
                    .font(.system(size: 48))
                    .foregroundStyle(currSuit.color)
                    .shadow(radius: 16, y: 8)
                    .frame(height: 48)
            } else {
                Image(systemName: currSuit.symbol)
                    .font(.system(size: 48))
                    .foregroundStyle(currSuit.color)
                    .shadow(radius: 16, y: 8)
                    .frame(height: 48)
            }
            
            HStack {
                CardView(suitRef: $currSuit, suit: .diamond)
                    .padding()
                CardView(suitRef: $currSuit, suit: .club)
                    .padding()
            }
        }
    }
}

#Preview {
    SelectACardView()
}
