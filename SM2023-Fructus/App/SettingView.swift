//
//  SettingView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 21/04/23.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 5) {
                    
                    GroupBox(label:
                        SettingLabelView(text: "Fructus", image: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
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
