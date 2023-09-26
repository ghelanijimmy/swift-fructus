//
//  ContentView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) {fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
