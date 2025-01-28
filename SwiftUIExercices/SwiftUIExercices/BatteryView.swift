//
//  BatteryView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

struct BatteryView: View {
    @State var percent: Double = 100
    
    var percentInt: Int {
        Int(percent)
    }
    
    var symbolName: String {
        if percentInt <= 25 {
            return "battery.0"
        } else if percentInt <= 50 {
            return "battery.25"
        } else if percentInt <= 75 {
            return "battery.50"
        } else if percentInt <= 99 {
            return "battery.75"
        } else {
            return "battery.100percent.bolt"
        }
    }
    
    var backCol: Color {
        if percentInt <= 25 {
            return .red
        } else if percentInt <= 50 {
            return .orange
        } else if percentInt <= 75 {
            return .yellow
        } else {
            return .green
        }
    }
    
    var body: some View {
        ZStack {
            Color(backCol)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 64){
                ZStack {
                    Image(systemName: symbolName)
                        .font(.system(size: 64))
                        .foregroundStyle(.white)
                        .frame(height: 64)
                        .symbolEffect(.bounce)
                        // .symbolEffect(.rotate)
                        // .symbolEffect(.wiggle)
                    Text("\(percentInt) %")
                        .bold()
                }
                Slider(value: $percent, in: 0...100)
                    .padding(.horizontal)
                    .accentColor(.black)
            }
        }
    }
}

#Preview {
    BatteryView()
}
