//
//  Weather.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var name: String
    var symbol: String
    var color: Color
}

let weathers: [Weather] = [Weather(name: "Sunny", symbol: "sun.max", color: .yellow),
                           Weather(name: "Clouds", symbol: "cloud.fill", color: .blue),
                           Weather(name: "Storm", symbol: "cloud.bolt.fill", color: .gray),
                           Weather(name: "Moon", symbol: "moon.fill", color: .purple),
                           Weather(name: "Snow", symbol: "snowflake", color: .cyan),
                           Weather(name: "Tornado", symbol: "tornado", color: .red)]
