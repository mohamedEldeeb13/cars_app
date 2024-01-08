//
//  settingView.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 31/12/2023.
//

import SwiftUI

struct settingView: View {
    //: proparties
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    //: body
    var body: some View {
        NavigationView {
            VStack
            {
                GroupBox() {
                    HStack
                    {
                        Text("cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                        
                    }
                    Divider()
                    HStack
                    {
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("cars app includs very important information about the lucutry cars, it ahs details about the history of different model")
                        
                    }
                }
                
                Toggle(isOn: $isOnboarding, label: {
                    if isOnboarding {
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundStyle(.green)
                    }else{
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundStyle(.gray)
                    }
                    
                })
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(8)
                Spacer()
            }
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
           
        }
    }
}

#Preview {
    settingView()
}
