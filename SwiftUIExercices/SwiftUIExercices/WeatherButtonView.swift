//
//  WeatherButtonView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct WeatherButtonView: View {
    var weather: Weather
    var body: some View {
        HStack {
            HStack {
                Image(systemName: weather.symbol)
                Text(weather.name)
            }
            .foregroundStyle(weather.color)
            .font(.title)
            .padding()
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.gray)
        }
    }
}
