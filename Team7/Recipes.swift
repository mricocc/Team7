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
    //var id = UUID()
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

var grillCheeseSandwhich = Recipe(name: "Grilled Cheese Sandwich", ingredients: [Ingredient( name: "Cheese"), Ingredient(name: "Bread")], spices: [Spice(name: "Sage")], recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.delish.com/cooking/recipe-ideas/a19610233/how-to-make-best-grilled-cheese/")!)

var bltSandwhich = Recipe(name: "BLT", ingredients: [Ingredient( name: "Bread"), Ingredient( name: "Bacon"), Ingredient(name: "Lettuce")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.allrecipes.com")!)

var hamAndCheeseSandwhich = Recipe(name: "Ham and Cheese Sandwhich", ingredients: [Ingredient( name: "Bread"), Ingredient( name: "Ham"), Ingredient(name: "Cheese")], spices: [Spice(name: "Salt")], recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.delish.com/cooking/recipe-ideas/a26870550/ham-and-cheese-sandwich-recipe/")!)

var quesadilla = Recipe(name: "Quesadilla", ingredients: [Ingredient( name: "Cheese"), Ingredient(name: "Tortilla")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "bla, bla, bla", recipeURL: URL(string: "https://www.simplyrecipes.com/recipes/quesadilla/")!)

var chickenQuesadilla = Recipe(ingredients: [Ingredient(name: "Chicken"), Ingredient(name: "Cheese")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "Chicken Quesadilla", recipeURL: URL(string: "https://www.simplyrecipes.com/recipes/quesadilla/")!)

var breakfastSkillet = Recipe(name: "BreakfastSkillet", ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Eggs"), Ingredient(name: "Salsa")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "Breakfast Skillet", recipeURL: URL(string: "https://lexiscleankitchen.com/3-ingredient-breakfast-skillet/")!)

var blackBeanSoup = Recipe(name: "Black Bean Soup", ingredients: [Ingredient(name: "Black Beans"), Ingredient(name: "Chicken Broth"), Ingredient(name: "Tomatoes")], /*spices: [Spice(name: "Salt", barcode: "ss")],*/ recipeText: "Black Bean Soup", recipeURL: URL(string: "https://www.honeyandbirch.com/3-ingredient-black-bean-soup/")!)

var slowCookerLemonGarlicChicken = Recipe(name: "Slow Cooker Lemon Garlic Chicken", ingredients: [Ingredient(name: "Lemons"), Ingredient(name: "Chicken")], /*spices: [Spice(name: "Salt"), Spice(name: "Pepper"), Spice(name: "Rosemary"), Spice(name: "Garlic")],*/ recipeText: "Slow Cooked Lemon Garlic Chicken", recipeURL: URL(string: "https://www.number-2-pencil.com/slow-cooker-lemon-garlic-chicken-6/")!)

var cheesyGarlicBread = Recipe(name: "Cheesy Garlic Bread", ingredients: [Ingredient(name: "Bread"), Ingredient(name: "Cheese")], /*spices: [Spice(name: "Garlic"), Spice(name: "Oregano")],*/ recipeText: "Cheesy Garlic Bread", recipeURL: URL(string: "https://therecipecritic.com/cheesy-garlic-bread/")!)

var cheesyGarlicBroccoli = Recipe(name: "Cheesy Garlic Broccoli", ingredients: [Ingredient(name: "Broccoli"), Ingredient(name: "Cheese")], /*spices: [Spice(name: "Garlic"), Spice(name: "Salt"), Spice(name: "Pepper")],*/ recipeText: "Cheesy Garlic Broccoli", recipeURL: URL(string: "https://tasty.co/recipe/cheesy-garlic-broccoli")!)

var flourlessPeanutButterCookies = Recipe(name: "Flourless Peanut Butter Cookies", ingredients: [Ingredient(name: "Peanut Butter"), Ingredient(name: "Eggs")], /*spices: [Spice(name: "Sugar")],*/ recipeText: "Fourless Peanut Butter Cookies", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/flourless-peanut-butter-cookies/")!)

var hardBoiledEggs = Recipe(name: "Hard Boiled Eggs", ingredients: [Ingredient(name: "Eggs")], /*spices: [Spice(name: "Sugar")],*/ recipeText: "Hard Boiled Eggs", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/hard-boiled-eggs/")!)

var roastedRosemaryCaliflower = Recipe(name: "Roasted Rosemary Califlower", ingredients: [Ingredient(name: "Cauliflower")], /*spices: [Spice(name: "Salt"), Spice(name: "Rosemary")],*/ recipeText: "Roasted Rosemary Califlower", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/roasted-rosemary-cauliflower/")!)

var salsaRice = Recipe(name: "Salsa Rice", ingredients: [Ingredient(name: "Rice"), Ingredient(name: "Cheese"), Ingredient(name: "Salsa")], /*spices: [Spice(name: "Salt"), Spice(name: "Rosemary")],*/ recipeText: "Roasted Rosemary Califlower", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/salsa-rice/")!)

var cornOnTheCobWithLemonPepperButter = Recipe(name: "Corn on the Cob with lemon pepper butter", ingredients: [Ingredient(name: "Corn")], /*spices: [Spice(name: "Lemon Pepper"), Spice(name: "Butter")],*/ recipeText: "Corn on the Cob with Lemon Pepper", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/corn-on-the-cob-with-lemon-pepper-butter/")!)

var baconWrappedCorn = Recipe(name: "Bacon wrapped corn", ingredients: [Ingredient(name: "Corn"), Ingredient(name: "Bacon")], /*spices: [Spice(name: "Chilli Powder")],*/ recipeText: "Bacon Wrap Corn", recipeURL: URL(string: "https://www.tasteofhome.com/recipes/bacon-wrapped-corn/")!)

var eggChickpeaSkillet = Recipe(name: "Egg Chickpea Skillet", ingredients: [Ingredient(name: "Egg"), Ingredient(name: "Chickpeas"), Ingredient(name: "Spinach")], /*spices: [Spice(name: "Cajun Seasoning")],*/ recipeText: "Egg Chickpea Skillet", recipeURL: URL(string: "https://thealmondeater.com/single-serve-egg-chickpea-breakfast/")!)

var toadInTheHole = Recipe(name: "Toad in the hole", ingredients: [Ingredient(name: "Egg"), Ingredient(name: "Bread")], /*spices: [Spice(name: "Cajun Seasoning")],*/ recipeText: "Toad in the Hole", recipeURL: URL(string: "https://lilluna.com/toad-in-the-hole/")!)

var basicOmelette = Recipe(name: "Basic Omelette", ingredients: [Ingredient(name: "Egg"), Ingredient(name: "Cheese"), Ingredient(name: "Butter")], /*spices: [Spice(name: "Cajun Seasoning")],*/ recipeText: "Traditional Omelette", recipeURL: URL(string: "https://www.bbcgoodfood.com/recipes/basic-omelette")!)

var recipes = [grillCheeseSandwhich, bltSandwhich, quesadilla, chickenQuesadilla, breakfastSkillet, blackBeanSoup, slowCookerLemonGarlicChicken, cheesyGarlicBread, flourlessPeanutButterCookies, hardBoiledEggs, roastedRosemaryCaliflower, salsaRice, cornOnTheCobWithLemonPepperButter, baconWrappedCorn, eggChickpeaSkillet, toadInTheHole, basicOmelette]

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
