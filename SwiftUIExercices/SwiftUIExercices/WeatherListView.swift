//
//  WeatherListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct WeatherListView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Weather")
                    .bold()
                    .font(.largeTitle)
                    .padding(.horizontal)
                List(weathers) { weather in
                    WeatherButtonView()
                }.ignoresSafeArea()
            }
        }
    }
}

#Preview {
    WeatherListView()
}
