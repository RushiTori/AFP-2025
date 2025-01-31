//
//  City.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import Foundation

struct City: Identifiable {
    var id: UUID = UUID()
    var name: String
    var weather: WeatherType
    var temperature: Temperature
    var time: String
}

let cities: [City] = [
    City(
        name: "Lyon",
        weather: .sunny,
        temperature: Temperature(inCelsius: 25),
        time: "12:00"
    ),
    City(
        name: "Paris",
        weather: .cloudy,
        temperature: Temperature(inCelsius: 10),
        time: "12:00"
    ),
    City(
        name: "Marseille",
        weather: .snowy,
        temperature: Temperature(inCelsius: 1),
        time: "12:00"
    ),
    City(
        name: "Lille",
        weather: .rainy,
        temperature: Temperature(inCelsius: 17),
        time: "12:00"
    ),
    City(
        name: "Toulouse",
        weather: .clearedBeautiful,
        temperature: Temperature(inCelsius: 8),
        time: "12:00"
    ),
]
