//
//  DetailsView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct DetailsView: View {
    //: proparties
    var car : Car
    
    //: body
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            VStack
            {
                //: header View
                HeaderView(car: car)
                
                VStack(alignment: .leading, spacing: 15)
                {
                    
                    //: car Name
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(car.gradientColors[0])
                    
                    //: car HeadLine
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    //: car Model
                    carModel(car: car)
                    
                    //: Description
                    
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(car.gradientColors[0])
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //: Link
                    footerView()
                        .padding(.bottom , 40)
                }
                .padding(.horizontal, 35)
                .frame(maxWidth: 620)
                
            }//: Vsatck
            
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    DetailsView(car: carData[0])
}



struct footerView: View {
    var body: some View {
        GroupBox() {
            HStack
            {
                Link("source: wikipedia", destination: URL(string: "http:/wikipedia.com")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}
