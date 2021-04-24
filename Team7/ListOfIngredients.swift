//
//  ListOfIngredients.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct ListOfIngredients: View {
    var body: some View {
        VStack{
            List {
                Text("Apples")
                Text("Asparagus")
                Text("Bananas")
                }
            .navigationTitle("Ingredients")
            HStack{
            NavigationLink(
                destination: Spices(),
                label:{
                    Text("Spices")
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

struct ListOfIngredients_Previews: PreviewProvider {
    static var previews: some View {
        ListOfIngredients()
    }
}
