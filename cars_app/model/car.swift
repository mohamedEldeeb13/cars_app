//
//  car.swift
//  cars_app
//
//  Created by Mohamed Abd Elhakam on 30/12/2023.
//

import SwiftUI


struct Car : Identifiable {
    let id = UUID()
    let title : String
    let headline : String
    let image : String
    let gradientColors : [Color]
    let description : String
    let models : [String]
}
