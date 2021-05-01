//
//  WebKit.swift
//  Team7
//
//  Created by Amanda Brode on 4/27/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct WebKit: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://www.apple.com"))
    }
}

struct WebKit_Previews: PreviewProvider {
    static var previews: some View {
        WebKit()
    }
}
