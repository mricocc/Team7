//
//  ListOfKitchenTools.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct ListOfKitchenTools: View {
    var body: some View {
        
        VStack{
            List {
                Text("Ladle")
                Text("Locking Tongs")
                Text("Metal Spatula")
                }
            .navigationTitle("Select your Kitchen Tools")
            HStack{
            NavigationLink(
                destination: Ingredients(),
                label:{
                    Text("Ingredients")
                })
                .padding()
            NavigationLink(
                destination: Spices(),
                label:{
                    Text("Spices")
                })
                .padding()
            }
            NavigationLink(
                destination: WhatAreYouInTheMoodFor(),
                label:{
                    Text("Are you ready to decide what you are in the mood for?")
                })
        }
    }
}

struct ListOfKitchenTools_Previews: PreviewProvider {
    static var previews: some View {
        ListOfKitchenTools()
    }
}
