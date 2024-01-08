//
//  ContentView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 30/12/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(carData){ item in
                cardView(car: item)
                    .cornerRadius(20)
                    .padding(.horizontal , 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

#Preview {
    OnboardingView()
}
