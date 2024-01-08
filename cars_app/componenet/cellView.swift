//
//  cellView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct cellView: View {
    //: proparties
    var car : Car
    
    //: body
    var body: some View {
        HStack
        {
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 2, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5)
            {
                Text(car.title)
                    .font(.title3)
                    .fontWeight(.heavy)
                Text(car.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                    
                
            }//: Vstack
            Spacer()
            
        }//: Hstack
    }
}

#Preview {
    cellView(car: carData[0])
}
