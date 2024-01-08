//
//  carListView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct carListView: View {
    //: proparties
    @State var isPresentSheetSetting : Bool = false
    //: body
    var body: some View {
        
        NavigationView {
            List {
                    ForEach(carData) { item in
                        NavigationLink(destination: DetailsView(car: item)){
                            cellView(car: item)
                                .padding(.vertical , 5)
                        }
                }
            }//: list
            .navigationTitle("Car")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                isPresentSheetSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isPresentSheetSetting , content: {
                settingView()
            })
        }//: navigationview
//        .navigationSplitViewStyle(.prominentDetail)
        .navigationViewStyle(.stack)
    }
}

#Preview {
    carListView()
}
