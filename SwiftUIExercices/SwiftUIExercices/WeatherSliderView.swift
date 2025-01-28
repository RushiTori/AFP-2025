//
//  WeatherSliderView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

struct WeatherSliderView: View {
    @State var celcius: Double = 25

    var text: String {
        if celcius < 20 {
            return "Ca caille !!! 🥶"
        } else if celcius > 30 {
            return "Je brule !!! 🥵"
        }
        return "C'est chill 😎"
    }

    var backCol: Color {
        if celcius < 20 {
            return Color.blue
        } else if celcius > 30 {
            return Color.red
        }
        return Color.orange
    }
    
    var body: some View {
        ZStack {
            Color(backCol)
                .ignoresSafeArea()
            
            VStack {
                Text("\(Int(celcius)) c°")
                    .foregroundStyle(.gray)
                Text(text)
                
                Slider(value: $celcius,in: 0...50)
                    .padding(.horizontal)
                
            }
            .font(.title)
            .bold()
        }
    }
}

#Preview {
    WeatherSliderView()
}
