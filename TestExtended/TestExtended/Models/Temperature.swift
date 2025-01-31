//
//  Temperature.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

struct Temperature {
    var inCelsius: Double
    var inFahrenheit: Double {
        return inCelsius * (9.0 / 5.0) + 32
    }
    
    static let fahrenheitSymbol: String = "degreesign.fahrenheit"
    static let celsiusSymbol: String = "degreesign.celsius"
}
