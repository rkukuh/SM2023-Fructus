//
//  StartButtonView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 18/04/23.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {
            Text("Start")
        } //: Button
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
