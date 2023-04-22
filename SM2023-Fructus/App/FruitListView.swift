//
//  ContentView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 17/04/23.
//

import SwiftUI

struct FruitListView: View {
    
    let fruits: [Fruit] = fruitData
    
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in  
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar() {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingView()
                }
            }
        }
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
