//
//  FruitHeaderView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 21/04/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    let fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 5)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.4)
            
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
