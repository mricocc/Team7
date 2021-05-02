//
//  ValidRecipesView.swift
//  Team7
//
//  Created by Amanda Brode on 5/1/21.
//

import SwiftUI

struct ValidRecipesView: View {
    var isIncluded = [Bool]()
    @State private var validRecipes = [Recipe]()
    var body: some View {
        List {
            if validRecipes.count > 0 {
                ForEach(validRecipes, id:\.self) { recipe in
                    NavigationLink(destination: WebKit(recipe: recipe), label: {
                        Text(recipe.name)
                })
                }
            } else{
                Text("Sorry, no receipes found!")
            
            }
        }.onAppear {
            validRecipes.removeAll()
            var chosenIngredients = [Ingredient]()
            for i in 0..<isIncluded.count {
                if isIncluded[i] {
                    chosenIngredients.append(ingredients[i])
                }
            }
            let setOfChosenIngredients = Set(chosenIngredients)
            
            for i in 0..<recipes.count{
                let setOfIngredientsInRecipe = Set(recipes[i].ingredients)
                if setOfIngredientsInRecipe.isSubset(of: setOfChosenIngredients){
                    validRecipes.append(recipes[i])
                }
            }
        }
    }
}

struct ValidRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        ValidRecipesView()
    }
}
