//
//  ValidRecipesView.swift
//  Team7
//
//  Created by Amanda Brode on 5/1/21.
//

import SwiftUI

struct ValidRecipesView: View {
    var ingredientIsIncluded = [Bool]()
    var spiceIsIncluded = [Bool]()
    @State private var validRecipes = [Recipe]()
    @State private var validRecipesForSpices = [Recipe]()
    
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
            validRecipesForSpices.removeAll()            //validRecipesForSpices = [Recipe]()
            var chosenIngredients = [Ingredient]()
            var chosenSpices = [Spice]()
            
            for i in 0..<ingredientIsIncluded.count {
                if ingredientIsIncluded[i] {
                    chosenIngredients.append(ingredients[i])
                }
            }
            for i in 0..<spiceIsIncluded.count {
                if spiceIsIncluded[i] {
                    chosenSpices.append(spices[i])
                }
            }
            let setOfChosenIngredients = Set(chosenIngredients)
            let setOfChosenSpices = Set(chosenSpices)
            
            for i in 0..<recipes.count{
                let setOfIngredientsInRecipe = Set(recipes[i].ingredients)
                let setOfSpicesInRecipe = Set(recipes[i].spices)
              
                if setOfIngredientsInRecipe.isSubset(of: setOfChosenIngredients) {
                    validRecipes.append(recipes[i])
                }
                if setOfSpicesInRecipe.isSubset(of: setOfChosenSpices) {
                    validRecipesForSpices.append(recipes[i])
                }
                
            }
            let result = Set(validRecipes).intersection(Set(validRecipesForSpices))
            print(validRecipes)
            print(validRecipesForSpices)
            print(result)
            validRecipes = Array(result)
        }
        .navigationTitle("Available Recipes")
        .foregroundColor(.orange)
    }
}

struct ValidRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        ValidRecipesView()
    }
}
