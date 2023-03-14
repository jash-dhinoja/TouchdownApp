//
//  NavigationBarDetailView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack{
            Button(action:{
                
            } ,label: {
                Image("chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action:{
                
            }, label:{
                Image(systemName: "cart")
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
