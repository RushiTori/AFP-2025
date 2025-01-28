//
//  AirPodCardView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 24/01/2025.
//

import SwiftUI

struct AirPodCardView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Image(systemName: "airpods.pro")
                    .font(.system(size: 64))
                Text("Les AirPods Pro offrent une qualité sonore incroyable avec la réduction active du brui.\nConfortables et faciles à utiliser, ils sont parfaits pour tous vos besoins audio.")
                    .bold()
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Image(systemName: "cart.fill")
                    .font(.system(size: 40))
                    .padding()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("AirPods Pro")
                        .font(.title)
                    Text("$249.99")
                        .foregroundStyle(.white)
                }
                .bold()
                .padding(8)
                
                Spacer()
            }
            .background(.orange)
            .cornerRadius(16)
            .padding()
            .shadow(radius: 16, y: 16)
        }
    }
}

#Preview {
    AirPodCardView()
}
