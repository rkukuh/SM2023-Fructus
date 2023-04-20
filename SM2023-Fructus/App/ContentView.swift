//
//  ContentView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    
    let fruits: [Fruit] = fruitData
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in  
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
