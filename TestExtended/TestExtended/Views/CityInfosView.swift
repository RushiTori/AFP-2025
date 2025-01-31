//
//  CityInfosView.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import SwiftUI

struct CityInfosView: View {
    var city: City
    
    var body: some View {
        ZStack {
            Image(city.weather.background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Text(city.name)
                    .padding(.vertical)
                
                HStack {
                    Text(city.time)
                        .padding(.horizontal)
                    
                    CityInfosTemperatureView(city: city)
                        .padding(.horizontal)
                }.padding(.vertical)
                
                Text(city.weather.fullName)
                
                Spacer()
            }
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CityInfosView(city: cities[0])
}
