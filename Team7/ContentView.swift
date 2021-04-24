//
//  ContentView.swift
//  Team7
//
//  Created by Amanda Brode on 4/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(
                    destination: WhatDoYouHave(),
                    label:{
                        Text("Voila")
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


