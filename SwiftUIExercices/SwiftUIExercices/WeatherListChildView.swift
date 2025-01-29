//
//  WeatherListChildView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct WeatherListChildView: View {
    var weather: Weather
    var body: some View {
        VStack {
            Image(systemName: weather.symbol)
                .foregroundStyle(weather.color)
                .font(.system(size: 64))
        }
        .navigationTitle(weather.name)
    }
}

#Preview {
    WeatherListChildView(weather: weathers[0])
}
