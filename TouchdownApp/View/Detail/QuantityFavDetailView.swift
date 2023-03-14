//
//  QuantityFavDetailView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

struct QuantityFavDetailView: View {
    @State private var itemCounter: Int = 0
    var body: some View {
        HStack(alignment: .center,spacing: 6){
            Button(action: {
                if itemCounter > 0{
                    itemCounter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(itemCounter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                if itemCounter < 100{
                    itemCounter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
