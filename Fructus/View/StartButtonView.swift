//
//  StartButtonView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-25.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        }) //: BUTTON
        .tint(.white)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
