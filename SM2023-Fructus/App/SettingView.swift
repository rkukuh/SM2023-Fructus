//
//  SettingView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 21/04/23.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("showOnboarding") var showOnboarding = false
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 5) {
                    
                    GroupBox(
                        label: SettingLabelView(text: "Fructus", image: "info.circle")
                    ) {
                        Divider()
                        
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse blandit euismod dui ut hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .font(.footnote)
                        }
                    } //: GroupBox
                    
                    GroupBox(
                        label: SettingLabelView(text: "Customization", image: "paintbrush")
                    ) {
                        Divider()
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box")
                            .font(.footnote)
                            .layoutPriority(1)
                            .padding(.vertical, 8)
                        
                        Toggle(isOn: $showOnboarding) {
                            if showOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        )
                    } //: GroupBox
                    
                    GroupBox(
                        label: SettingLabelView(text: "Application", image: "apps.iphone")
                    ) {
                        SettingRowView(label: "Developer", content: "R. Kukuh")
                        SettingRowView(label: "Website", linkLabel: "Personal Blog", linkDestination: "http://apple.com")
                        SettingRowView(label: "Version", content: "1.0")
                        
                    } //: GroupBox
                    
                } //: VStack
                .navigationTitle("Settings")
                .toolbar() {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
                
            } //: ScrollView
        } //: NavigationStack
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
