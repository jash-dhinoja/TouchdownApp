//
//  ContentView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 13/03/2023.
//

import SwiftUI

struct ContentView: View {
//MARK: Properties
    
    @EnvironmentObject var shop: Shop
    
    //MARK: Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,getWindowTopSafeAreaInset())
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5,x: 0, y: 5)
                    ScrollView(.vertical,showsIndicators: false){
                        VStack(spacing: 0){
                                FeaturedView()
                                .padding(.vertical,20)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15){
                                ForEach(products){ product in
                                    ProductItem(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                }
                .background(colorBackground.ignoresSafeArea(.all,edges: .top))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
