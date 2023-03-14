//
//  ProductDetailView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, getWindowTopSafeAreaInset())
            
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center,spacing: 0){
             
                RatingSizesDetailView()
                    .padding(.top, -10)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical,showsIndicators: false){
                    Text(sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavDetailView()
                    .padding(.vertical,10)
                
                AddToCartDetailView()
                    .padding(.bottom,20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
