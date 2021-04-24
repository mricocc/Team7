//
//  ListOfSpices.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct ListOfSpices: View {
    var body: some View {
        VStack{
            List {
                Text("allspice (Pimenta dioica)")
                Text("angelica (Angelica archangelica)")
                Text("anise (Pimpinella anisum)")
                }
            .navigationTitle("Select your Spices")
            HStack{
            NavigationLink(
                destination: Ingredients(),
                label:{
                    Text("Ingredients")
                })
                .padding()
            NavigationLink(
                destination: KitchenTools(),
                label:{
                    Text("Kitchen Tools")
                })
            }
        }
    }
}

struct ListOfSpices_Previews: PreviewProvider {
    static var previews: some View {
        ListOfSpices()
    }
}
