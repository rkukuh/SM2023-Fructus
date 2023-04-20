//
//  FruitDetailView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 20/04/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                
                // Header goes here...
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    Text(fruit.headline)
                        .font(.headline)
                    
                    // Nutrients goes here...
                    
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[0])
                    
                    Text(fruit.description)
                    
                } //: VStack
                .padding(.horizontal, 20)
                
            } //: VStack
        } //: ScroolView
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
