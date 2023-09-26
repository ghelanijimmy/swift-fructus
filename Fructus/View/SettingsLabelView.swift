//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-26.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    let labelText: String
    let labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //: HSTACK
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}
