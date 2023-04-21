//
//  SettingLabelView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 21/04/23.
//

import SwiftUI

struct SettingLabelView: View {
    
    let text: String
    let image: String
    
    var body: some View {
        HStack {
            Text(text.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: image)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(text: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
