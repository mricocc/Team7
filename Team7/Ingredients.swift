//
//  Ingredients.swift
//  Team7
//
//  Created by Amanda Brode on 4/18/21.
//

import SwiftUI

struct Ingredients: View {
    var body: some View {
        
        VStack{
            NavigationLink(
                destination: ListOfIngredients(),
                label:{
                    Text("Select your Ingredients")
                })
        }
    }
}


struct Ingredients_Previews: PreviewProvider {
    static var previews: some View {
        Ingredients()
    }
}
