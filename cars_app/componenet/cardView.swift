//
//  carView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 30/12/2023.
//

import SwiftUI

struct cardView: View {
    //: proparties
    var car : Car
    @State var isAnimation : Bool = false
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    //: body
    var body: some View {
        VStack
        {
            Image(car.image)
                .resizable()
                .padding()
                .scaledToFit()
                .scaleEffect(isAnimation ? 1 : 0.6)
                .animation(.linear(duration: 0.5), value: isAnimation)
            
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            Text(car.description)
                .foregroundStyle(.white)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            Button{
                isOnboarding = false
            } label: {
                Image(systemName: "arrow.right.circle")
                Text("Start")
                
            }.font(.largeTitle)
            .padding(.horizontal , 15)
                .padding(.vertical, 10)
                .foregroundStyle(.white)
                .background(Capsule().strokeBorder(Color.white , lineWidth: 1.5))
            
        }//; Vstack
        .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors ), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimation = true
        })
    }
}

#Preview {
    cardView(car: carData[0] )
}
