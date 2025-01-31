//
//  WeatherType.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import SwiftUI

enum WeatherType {
    case sunny
    case cloudy
    case snowy
    case rainy
    case clearedBeautiful
    
    var background: ImageResource {
        switch self {
        case .sunny: return .sun
        case .cloudy: return .clouds
        case .snowy: return .snow
        case .rainy: return .rain
        case .clearedBeautiful: return .beautifulClearing
        }
    }
    
    var fullName: String {
        switch self {
        case .sunny: return "Ensoleillé"
        case .cloudy: return "Nuages prédominants"
        case .snowy: return "Neige"
        case .rainy: return "Pluie"
        case .clearedBeautiful: return "Belles éclaircies"
        }
    }
}
