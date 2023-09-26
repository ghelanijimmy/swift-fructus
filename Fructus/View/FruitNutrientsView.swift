//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-26.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) {nutrient in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[nutrient])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.caption).bold())
                        Spacer()
                        Text(fruit.nutrition[nutrient])
                            .multilineTextAlignment(.trailing)
                            .font(.caption)
                    } //: HSTACK
                } //: FOREACH
            }
        } //: BOX
    }
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData.shuffled()[1])
        .padding()
}
