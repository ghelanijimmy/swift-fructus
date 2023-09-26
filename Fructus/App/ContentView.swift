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
    @State private var isShowingSettings: Bool = false
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
            }//: LIST
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: BUTTON
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                }
            }
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
