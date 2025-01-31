//
//  CityListView.swift
//  TestExtended
//
//  Created by apprenant97 on 31/01/2025.
//

import SwiftUI

struct CityListView: View {
    @State var search: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView {
                    ForEach(cities) { city in
                        if search.isEmpty || city.name.lowercased().contains(search.lowercased()) {
                            NavigationLink {
                                CityInfosView(city: city)
                            } label: {
                                CityButtonView(city: city)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Météo")
            .searchable(text: $search, prompt: "Vile ou aéroport")
        }
    }
}

#Preview {
    CityListView()
}
