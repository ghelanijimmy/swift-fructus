//
//  FruitModel.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-26.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: ImageResource
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

