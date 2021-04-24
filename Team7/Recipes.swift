//
//  Recipes.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Recipes: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: RecipeFeedback(),
                label:{
                    Text("Don't forget to rate the recipe")
                })
        }
    }
}

struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
