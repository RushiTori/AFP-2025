//
//  WeatherListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct WeatherListView: View {
    var body: some View {
        NavigationStack {
            List(weathers) { weather in
                NavigationLink {
                    WeatherListChildView(weather: weather)
                } label: {
                    WeatherButtonView(weather: weather)
                }
            }
            .navigationTitle("Weather")
        }
       
    }
}

#Preview {
    WeatherListView()
}
