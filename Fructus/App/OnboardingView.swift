//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-25.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits) {fruit in
                FruitCardView(fruit: fruit)
                
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: PREVIEW
#Preview {
    OnboardingView()
}
