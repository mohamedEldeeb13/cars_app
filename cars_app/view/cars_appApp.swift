//
//  cars_appApp.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 30/12/2023.
//

import SwiftUI

@main
struct cars_appApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                carListView()
            }
        }
    }
}
