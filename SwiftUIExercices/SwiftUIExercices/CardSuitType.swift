//
//  CardSuitType.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

enum CardSuitType {
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
    
    mutating func toggle(between: CardSuitType) {
        if self == between {
            self = .none
        } else {
            self = between
        }
    }
}
