//
//  FruitListView.swift
//  SwiftUIExercices
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var img: ImageResource
    var backCol: Color
    var name: String
    var desc: String
}

let fruits: [Fruit] = [
    Fruit(img: .fruitsApricot, backCol: .orange, name: "Abricot", desc: "Fruit charnu, une drupe, de forme arrondie, possédant un noyau dur contenant une seule grosse graine, ou amande"),
    Fruit(img: .fruitsBanana, backCol: .yellow, name: "Banane", desc: "Baie oblongue, fruit disposé en régime, de certaines espèces de bananiers, à peau jaune lorsqu'il est mûr à pulpe comestible, farineuse et sucrée"),
    Fruit(img: .fruitsBlackCurrant, backCol: .purple, name: "Cassis", desc: "Baies le plus souvent noires formant des grappes, pulpeuses, à la peau lisse, fortement aromatique"),
    Fruit(img: .fruitsStrawberry, backCol: .pink, name: "Fraise", desc: "Baie rouge reconnaissable grâce à sa peau rouge et ses petites graines beiges, les akènes."),
    Fruit(img: .fruitsMelon, backCol: .green, name: "Melon", desc: "Le melon est une espèce de plantes herbacées annuelles, originaire d'Afrique intertropicale, appartenant à la famille des Cucurbitacées."),
    Fruit(img: .fruitsApple, backCol: .yellow, name: "Pomme", desc: "Fruit charnu, de forme quasi sphérique, déprimée au sommet et à la base, à pulpe homogène."),
]

struct FruitListView: View {
    var body: some View {
        List(fruits) { fruit in
            HStack {
                Image(fruit.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 128 - 8, height: 128 - 8)
                    .padding(8)
                    .background(fruit.backCol)
                    .cornerRadius(24)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(fruit.name)
                        .font(.largeTitle)
                    Text(fruit.desc)
                        .foregroundStyle(.gray)
                        .font(.system(size: 8))
                }
                .bold()
            }
        }
    }
}

#Preview {
    FruitListView()
}
