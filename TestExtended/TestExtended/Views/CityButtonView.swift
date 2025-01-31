//
//  CityButtonView.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import SwiftUI

struct CityButtonView: View {
    var city: City
    
    var body: some View {
        ZStack {
            Image(city.weather.background)
                .resizable()
                .scaledToFill()
                .frame(height: 128)
                .clipped()
                .cornerRadius(16)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading) {
                        Text(city.name)
                            .font(.largeTitle)
                            .bold()
                            .padding(.top)
                        Text(city.time)
                    }
                    Text(city.weather.fullName)
                        .font(.caption)
                        .padding(.bottom)
                }
                .padding(.leading)
                Spacer()
                Text("\(Int(city.temperature.inCelsius))°")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)
                    .padding(.trailing)
            }
            .foregroundStyle(.white)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CityButtonView(city: cities[0])
}
