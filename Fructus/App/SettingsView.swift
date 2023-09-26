//
//  SettingsView.swift
//  Fructus
//
//  Created by Jimmy Ghelani on 2023-09-26.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label: 
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image(.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in far, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitramins, and much more.")
                                .font(.footnote)
                        } //: HSTACK
                    }
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"),
                        content: {
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome scren again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundStyle(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundStyle(.secondary)
                                }
                            })
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        }
                    )
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label: 
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphoen")
                        ) {
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Designer", content: "Jimmy Ghelani")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "Swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter", linkLabel: "@ghelanijimmy", linkDestination: "twitter.com/ghelanijimmy")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }//: BOX
                } //: VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                    }
                }
            } //: SCROLL
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
}
