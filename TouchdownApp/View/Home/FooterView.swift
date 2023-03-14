//
//  FooterView.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 13/03/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10){
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tortor massa. Donec auctor dui eget pharetra euismod. Nunc id urna nec sapien viverra eleifend.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright @ Jash Dhinoja\nAll rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .layoutPriority(1)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
