//
//  OnboardingView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
            
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
