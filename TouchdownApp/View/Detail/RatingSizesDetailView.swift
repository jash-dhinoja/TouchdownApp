//
//  RatingSizesDetailView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    @State private var selectedRating = 0
    @State private var selectedSize = "M"
    
    let sizes: [String] = [ "XS", "X", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment:.top,spacing: 3){
            
            VStack(alignment: .leading,spacing: 3){
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 3){
                    ForEach(1...5, id:\.self){ item in
                        Button(action: {
                            selectedRating = item
                        }, label: {
                            Image(systemName: selectedRating < item ? "star" : "star.fill")
                                .frame(width: 28,height: 28)
                                .foregroundColor(shop.selectedProduct?.mainColor ?? sampleProduct.mainColor)
                        })
                    }
                }
            }
            Spacer()
            VStack(alignment: .trailing,spacing: 3){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 5){
                    ForEach(sizes, id: \.self){ size in
                        Button(action: {
                            selectedSize = size
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(selectedSize == size ? Color.white : colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    selectedSize == size ? (shop.selectedProduct?.mainColor ?? sampleProduct.mainColor).cornerRadius(5) : Color.white.cornerRadius(5)
                                )
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                }
            }
        }
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
