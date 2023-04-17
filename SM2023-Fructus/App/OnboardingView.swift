//
//  OnboardingView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            
            ForEach(0 ..< 5) { item in
                FruitCardView()
            } //: Loop
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
