//
//  FestivalView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 27/01/2025.
//

import SwiftUI

struct FestivalView: View {
    var body: some View {
        ZStack {
            Image(.festivalBG)
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Music Festival 2025")
                            .font(.title)
                        Text("10 Juillet 2025")
                            .foregroundStyle(.black.opacity(0.5))
                            .font(.title2)
                    }
                    .padding()
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .font(.title)
                        Text("Place du capitol-Toulouse")
                    }
                    .padding()
                }
                .bold()
                .padding(.horizontal)
                .padding(.vertical, 96)
                .background(.ultraThinMaterial)
                .cornerRadius(32)
                
                Spacer()
            }
        }
    }
}

#Preview {
    FestivalView()
}
