//
//  headerViewInDetaisPage.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct HeaderView: View {
    //: proparties
    var car : Car
    @State var isAnimation : Bool = false
    //: body
    var body: some View {
        ZStack
        {
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimation ? 1 : 0.6)
                .animation(.linear(duration: 0.5), value: isAnimation)
            
        }//: Zstack
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimation = true
        })
    }
}

#Preview {
    HeaderView(car: carData[0])
}
