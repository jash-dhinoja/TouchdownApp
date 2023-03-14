//
//  ContentView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 13/03/2023.
//

import SwiftUI

struct ContentView: View {
//MARK: Properties
    
    func getWindowTopSafeAreaInset() -> CGFloat{
        return UIApplication
            .shared
            .connectedScenes
            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
            .first { $0.isKeyWindow }?
            .safeAreaInsets.top ?? .zero
    }
    
    //MARK: Body
    var body: some View {
        ZStack {
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
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .top))
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
