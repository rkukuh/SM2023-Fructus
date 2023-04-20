//
//  SM2023_FructusApp.swift
//  SM2023-Fructus
//
//  Created by R. Kukuh on 17/04/23.
//

import SwiftUI

@main
struct SM2023_FructusApp: App {
    
    @AppStorage("showOnboarding") var showOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView()
            } else {
                FruitListView()
            }
        }
    }
}
