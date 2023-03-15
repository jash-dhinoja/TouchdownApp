//
//  Shop.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
