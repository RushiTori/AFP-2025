//
//  WeatherListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct WeatherListView: View {
    var body: some View {
        List(weathers) { weather in
            HStack {
                Image(systemName: weather.symbol)
                Text(weather.name)
            }
            .foregroundStyle(weather.color)
        }
    }
}

#Preview {
    WeatherListView()
}
