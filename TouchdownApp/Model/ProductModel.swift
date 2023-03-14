//
//  ProductModel.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import Foundation

struct Product: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var priceString: String { return "$\(price)"}
}
