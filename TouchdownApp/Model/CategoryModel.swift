//
//  CategoryModel.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import Foundation

struct Category: Codable,Identifiable{
    let id: Int
    let name:String
    let image: String
}
