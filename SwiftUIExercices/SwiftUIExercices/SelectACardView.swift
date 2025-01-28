//
//  SelectACardView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

enum SuitType {
    case none
    case spade
    case heart
    case diamond
    case club
    
    var color: Color {
        if self == .heart || self == .diamond {
            return .red
        }
        return .black
    }
    
    var symbol: String {
        switch self {
        case .none:
            return "?"
        case .spade:
            return "suit.spade.fill"
        case .heart:
            return "suit.heart.fill"
        case .diamond:
            return "suit.diamond.fill"
        case .club:
            return "suit.club.fill"
        }
    }
    
    var text: String {
        switch self {
        case .none:
            return "?"
        case .spade:
            return "As de pique"
        case .heart:
            return "As de coeur"
        case .diamond:
            return "As de carreau"
        case .club:
            return "As de trèfle"
        }
    }
    
    mutating func toggle(between: SuitType) {
        if self == between {
            self = .none
        } else {
            self = between
        }
    }
}

struct Card: View {
    var suitRef: Binding<SuitType>
    let suit: SuitType
    
    var body: some View {
        Button {
            suitRef.wrappedValue.toggle(between: suit)
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

struct SelectACardView: View {
    @State var currSuit: SuitType = .none
    
    var body: some View {
        VStack {
            HStack {
                Card(suitRef: $currSuit, suit: .spade)
                    .padding()
                Card(suitRef: $currSuit, suit: .heart)
                    .padding()
            }
            
            if currSuit == .none {
                Text(currSuit.symbol)
                    .bold()
                    .font(.system(size: 48))
                    .foregroundStyle(currSuit.color)
                    .shadow(radius: 16, y: 8)
            } else {
                Image(systemName: currSuit.symbol)
                    .font(.system(size: 48))
                    .foregroundStyle(currSuit.color)
                    .padding()
                    .shadow(radius: 16, y: 8)
            }
            
            HStack {
                Card(suitRef: $currSuit, suit: .diamond)
                    .padding()
                Card(suitRef: $currSuit, suit: .club)
                    .padding()
            }
        }
    }
}

#Preview {
    SelectACardView()
}
