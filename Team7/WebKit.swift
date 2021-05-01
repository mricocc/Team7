//
//  WebKit.swift
//  Team7
//
//  Created by Amanda Brode on 4/27/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct WebKit: View {
    var recipe = Recipe(recipeURL: URL(string:"https://www.apple.com")!)
    var body: some View {
        SwiftUIWebView(url: recipe.recipeURL)
    }
}

//struct WebKit_Previews: PreviewProvider {
//    static var previews: some View {
//        WebKit()
//    }
//}
