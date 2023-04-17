//
//  StartButtonView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            
            print("Exit the onboarding")
            
        }) {
            
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.5)
            )
            .accentColor(.white)
            
        } //: Button
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
