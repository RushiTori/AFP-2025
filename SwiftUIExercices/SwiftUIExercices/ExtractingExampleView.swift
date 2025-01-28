//
//  ExtractingExampleView.swift
//  ExeciceSwiftUI
//
//  Created by apprenant97 on 24/01/2025.
//

import SwiftUI

struct ExtractedExampleView: View {
    var symbol: String
    var text: String
    var symbolColor: Color
    var body: some View {
        HStack {
            Image(systemName: symbol)
                .foregroundStyle(symbolColor)
            Text(text)
        }
        .font(.title)
    }
}

struct ExtractingExampleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ExtractedExampleView(symbol: "d.circle.fill", text: "Danilo Santana", symbolColor: .orange)
            ExtractedExampleView(symbol: "g.circle.fill", text: "Gilles Deltel", symbolColor: .purple)
            ExtractedExampleView(symbol: "m.circle.fill", text: "Mark Nichols", symbolColor: .blue)
            
            ExtractedExampleView(symbol: "l.circle.fill", text: " ", symbolColor: .white)
            
            ExtractedExampleView(symbol: "leaf.arrow.circlepath", text: "Go Vegan", symbolColor: .green)
            ExtractedExampleView(symbol: "arrow.3.trianglepath", text: "Go Recycling", symbolColor: .red)
            ExtractedExampleView(symbol: "arrow.3.trianglepath", text: "Go Beer", symbolColor: .yellow)
        }
    }
}

#Preview {
    ExtractingExampleView()
}
