//
//  ProductItem.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

struct ProductItem: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading,spacing: 6){
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
            .background(Color(red: product.red,
                              green: product.green,
                              blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.priceString)
                .fontWeight(.semibold)
                .foregroundColor(colorGray)
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
