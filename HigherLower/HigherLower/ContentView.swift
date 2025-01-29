//
//  ContentView.swift
//  HigherLower
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    var minRand: UInt64 = 0
    var maxRand: UInt64 = 0
    var goal: UInt64 = 0
    var guess: UInt64 = 0
    
    @State var minRandText: String = "0"
    @State var maxRandText: String = "10000"
    
    var body: some View {
        VStack {
            Text("Define boundaries (no negative numbers)")
                .font(.largeTitle)
                .foregroundStyle(.pink)
            Spacer()
            HStack {
                Spacer()
                TextField(text: $minRandText) {
                    // WIP
                }
                .frame(width: 128)
                .padding(.horizontal)
                TextField(text: $maxRandText) {
                    // WIP
                }
                .frame(width: 128)
                .padding(.horizontal)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
