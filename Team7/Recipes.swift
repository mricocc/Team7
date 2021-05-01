//
//  Recipes.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Ingredient: Hashable {
//    var id = UUID()
    var name = String()
    var barcode = String()
}
struct Spice: Hashable {
    var id = UUID()
    var name = String()
    var barcode = String()
}
struct DietMoodType {
    var id = UUID()
    var name = String()
}
struct EthnicMoodType {
    var id = UUID()
    var name = String()
}
struct Recipe: Hashable {
    var id = UUID()
    var name = String()
    var ingredients = [Ingredient]()
    var spices = [Spice]()
    var recipeText = String()
    var recipeURL: URL
}

var grillCheeseSandwhich = Recipe(name: "Grilled Cheese Sandwich", ingredients: [Ingredient( name: "Cheese"), Ingredient(name: "Bread")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.delish.com/cooking/recipe-ideas/a19610233/how-to-make-best-grilled-cheese/")!)

var bltSandwhich = Recipe(name: "BLT", ingredients: [Ingredient( name: "Bread"), Ingredient( name: "Bacon"), Ingredient(name: "Lettuce")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.allrecipes.com")!)

var quesadilla = Recipe(ingredients: [Ingredient( name: "Cheese", barcode: "ic"), Ingredient(name: "Tortilla", barcode: "il")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.simplyrecipes.com/recipes/quesadilla/")!)

var chickenQuesadilla = Recipe(ingredients: [Ingredient(name: "Chicken", barcode: "icm"), Ingredient(name: "Cheese", barcode: "ic")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "Chicken Quesadilla", recipeURL: URL(string: "https://www.simplyrecipes.com/recipes/quesadilla/")!)

var recipes = [grillCheeseSandwhich,bltSandwhich,quesadilla,chickenQuesadilla]

struct Recipes: View {
    @State var chosenIngredients = [Spice]()
    
    var body: some View {
        VStack{
            Form {
                Section{
                    
                }
            }.onAppear {
                print(grillCheeseSandwhich.ingredients[0].name)
                print(grillCheeseSandwhich.spices[0].name)
            }
            NavigationLink(
                destination: RecipeFeedback(),
                label:{
                    Text("Don't forget to rate the recipe")
                })
        }
        
    }
    func elgibleRecipes(ingredients: [Spice]) -> [Recipe] {
        return[]
    }
   /* var userInput = true
    func itemList() -> Bool {
        if Ingredient = 
        return userInput
    }*/
}

struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
