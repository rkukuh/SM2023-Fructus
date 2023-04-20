//
//  FruitRowView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 20/04/23.
//

import SwiftUI

struct FruitRowView: View {
    
    let fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25),
                        radius: 3)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                                   startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            } //: VStack
            
        } //: HStack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
