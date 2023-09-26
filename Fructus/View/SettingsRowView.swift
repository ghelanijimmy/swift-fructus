//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-26.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }//: HSTACK
    }
}

//MARK: - PREVIEW
#Preview("Content", traits: .sizeThatFitsLayout) {
    SettingsRowView(name: "Developer", content: "John / Jane")
        .padding()
}

#Preview("Link", traits: .sizeThatFitsLayout) {
    SettingsRowView(name: "Developer", linkLabel: "Google", linkDestination: "https://google.ca")
        .padding()
}
