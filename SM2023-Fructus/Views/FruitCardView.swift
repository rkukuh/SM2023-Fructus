//
//  FruitCardView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20) {
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25),
                        radius: 8, x: 6, y: 8)
            
            // Fruit: Title
            
            Text("Blueberry")
            
            // Fruit: Headline
            // Button: Start
            
        } //: Vstack
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
