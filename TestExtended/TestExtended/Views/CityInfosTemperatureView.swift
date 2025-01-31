//
//  CityInfosTemperatureView.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import SwiftUI

struct CityInfosTemperatureView: View {
    var city: City
    
    @State var showFarenheit: Bool = false
    
    var shownTemperature: Int {
        if showFarenheit {
            return Int(city.temperature.inFahrenheit)
        } else {
            return Int(city.temperature.inCelsius)
        }
    }
    
    var shownSymbol: String {
        if showFarenheit {
            return Temperature.fahrenheitSymbol
        } else {
            return Temperature.celsiusSymbol
        }
    }
    
    var hiddenSymbol: String {
        if showFarenheit {
            return Temperature.celsiusSymbol
        } else {
            return Temperature.fahrenheitSymbol
        }
    }
    
    var body: some View {
        VStack(spacing: 4) {
            HStack{
                Text("\(shownTemperature)")
                Image(systemName: shownSymbol)
            }
            
            Button {
                showFarenheit.toggle()
            } label: {
                HStack(spacing: 0) {
                    Image(systemName: shownSymbol)
                    Text("->")
                    Image(systemName: hiddenSymbol)
                }
                .font(.title2)
                .padding(4)
                .frame(height: 48)
                .background(.ultraThinMaterial)
                .cornerRadius(8)
            }
        }
    }
}

#Preview {
    CityInfosTemperatureView(city: cities[0])
}
