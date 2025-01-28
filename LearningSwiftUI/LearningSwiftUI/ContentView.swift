//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by apprenant97 on 24/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.green).ignoresSafeArea()
            LinearGradient(colors: [.rushiPink, .mint], startPoint: .top, endPoint: .bottom)
            //Color(.systemMint)
            Circle()
                .scale(0.5)
                .foregroundStyle(.purple)
            VStack {
                HStack {
                    Image(systemName: "bird.fill")
                        .imageScale(.small)
                        .foregroundStyle(.rushiPink)
                    Image(systemName: "bird.fill")
                        .imageScale(.medium)
                        .foregroundStyle(.rushiPink)
                    Image(systemName: "bird.fill")
                        .imageScale(.large)
                        .foregroundStyle(.rushiPink)
                }
                Image(systemName: "music.house")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                Text("Hello, world!")
                    .bold()
                    .font(.title)
                    .foregroundStyle(.pink)
            }
        }
    }
}

#Preview {
    ContentView()
}
