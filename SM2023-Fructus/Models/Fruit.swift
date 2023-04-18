//
//  Fruit.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 19/04/23.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
