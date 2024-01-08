//
//  carModel.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct carModel: View {
    //: proparties
    var car : Car
    //: body
    var body: some View {
        GroupBox {
            DisclosureGroup("Car Model") {
                ForEach(0 ..< 7) { item in
                    Divider()
                    HStack
                    {
                        Image(systemName: "car")
                            .foregroundStyle(car.gradientColors[0])
                        
                        Text("Model \(item + 1):")
                            .foregroundStyle(car.gradientColors[0])
                            .fontWeight(.bold)
                        Spacer()
                        Text(car.models[item])
                    }
                    .padding(.vertical , 2)
                }
            }
            .foregroundStyle(car.gradientColors[0])
        }
    }
}

#Preview {
    carModel(car: carData[2])
}
