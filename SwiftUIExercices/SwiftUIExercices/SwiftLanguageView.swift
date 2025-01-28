//
//  SwiftLanguageView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 24/01/2025.
//

import SwiftUI

struct SwiftLanguageView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text("Swift Language")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "swift")
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
            }.padding()
            
            HStack {
                Text("Version: 6.0.1")
                    .bold()
                    .font(.title2)
                    .foregroundStyle(.gray)
                Spacer()
                Text("Since 2014")
                    .bold()
                    .font(.title2)
            }.padding()
            
            Spacer()
            
            Text(String(#file))
        }
    }
}

#Preview {
    SwiftLanguageView()
}
