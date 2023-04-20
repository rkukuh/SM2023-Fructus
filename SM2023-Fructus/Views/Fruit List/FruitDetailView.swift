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
        Text(fruit.title)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
