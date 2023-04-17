//
//  FruitCardView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25),
                            radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.4)
                
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.35),
                            radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritious, and wildly popular fruit all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient:
                                    Gradient(colors: [
                                        Color("ColorBlueberryLight"),
                                        Color("ColorBlueberryDark")]),
                                   startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
