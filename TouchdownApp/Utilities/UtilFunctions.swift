//
//  UtilFunctions.swift
//  TouchdownApp
//
//  Created by Jash Dhinoja on 14/03/2023.
//

import SwiftUI

func getWindowTopSafeAreaInset() -> CGFloat{
    return UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }?
        .safeAreaInsets.top ?? .zero
}
