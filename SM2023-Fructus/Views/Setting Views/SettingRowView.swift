//
//  SettingRowView.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 21/04/23.
//

import SwiftUI

struct SettingRowView: View {
    
    var label: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        HStack {
            Text(label).foregroundColor(.gray)
            
            Spacer()
            
            if content != nil {
                Text(content!)
            } else if linkLabel != nil && linkDestination != nil {
                Link(linkLabel!, destination: URL(string: linkDestination!)!)
                
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.secondary)
            } else {
                EmptyView()
            }
        }
    }
    
    init(label: String, content: String) {
        self.label = label
        self.content = content
    }
    
    init(label: String, linkLabel: String, linkDestination: String) {
        self.label = label
        self.linkLabel = linkLabel
        self.linkDestination = linkDestination
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(label: "Developer", content: "R. Kukuh")
                .previewLayout(.sizeThatFits)
            
            SettingRowView(label: "Blog", linkLabel: "Apple Website",
                           linkDestination: "http://apple.com")
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
