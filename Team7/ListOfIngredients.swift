//
//  ListOfIngredients.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI
    
var ingredients = [Ingredient(name: "Apples"),
                   Ingredient(name: "Asparagus"),
                   Ingredient(name: "Bananas"),
                   Ingredient(name: "Beans"),
                   Ingredient(name: "Beef"),
                   Ingredient(name: "Bacon"),
                   Ingredient(name: "Beets"),
                   Ingredient(name: "Bell Peppers"),
                   Ingredient(name: "Bread"),
                   Ingredient(name: "Brussels Sprouts"),
                   Ingredient(name: "Cabbage"),
                   Ingredient(name: "Cane Berries"),
                   Ingredient(name: "Carrots"),
                   Ingredient(name: "Cheese"),
                   Ingredient(name: "Eggplant"),
                   Ingredient(name: "Eggs"),
                   Ingredient(name: "Garlic"),
                   Ingredient(name: "Grapes"),
                   Ingredient(name: "Green Beans"),
                   Ingredient(name: "Herbs"),
                   Ingredient(name: "Hot Peppers"),
                   Ingredient(name: "Kale"),
                   Ingredient(name: "Kiwi"),
                   Ingredient(name: "Leafy Greens"),
                   Ingredient(name: "Leeks"),
                   Ingredient(name: "Lettuce"),
                   Ingredient(name: "Lentils"),
                   Ingredient(name: "Mangos"),
                   Ingredient(name: "Microgreens"),
                   Ingredient(name: "Milk"),
                   Ingredient(name: "Mushrooms"),
                   Ingredient(name: "Oats"),
                   Ingredient(name: "Onions"),
                   Ingredient(name: "Oranges"),
                   Ingredient(name: "Parsnips"),
                   Ingredient(name: "Peaches"),
                   Ingredient(name: "Pears"),
                   Ingredient(name: "Peas"),
                   Ingredient(name: "Pineapple"),
                   Ingredient(name: "Pork"),
                   Ingredient(name: "Potatoes"),
                   Ingredient(name: "Pumpkin"),
                   Ingredient(name: "Radishes"),
                   Ingredient(name: "Rhubarb"),
                   Ingredient(name: "Rice"),
                   Ingredient(name: "Salad Greens"),
                   Ingredient(name: "Salmon"),
                   Ingredient(name: "Spinach"),
                   Ingredient(name: "Split Peas"),
                   Ingredient(name: "Strawberries"),
                   Ingredient(name: "Summer Squash"),
                   Ingredient(name: "Sweet Potato"),
                   Ingredient(name: "Tofu"),
                   Ingredient(name: "Tomatoes"),
                   Ingredient(name: "Tuna"),
                   Ingredient(name: "Turkey"),
                   Ingredient(name: "Turnips"),
                   Ingredient(name: "Water"),
                   Ingredient(name: "Watermelon"),
                   Ingredient(name: "Wheat"),
                   Ingredient(name: "Whole Grains"),
                   Ingredient(name: "Winter Squash"),
                   Ingredient(name: "Yogurt"),
                   
]



struct ListOfIngredients: View {
    /*@State var itemsInIngredients : [String] = ["Apples", "Asparagus", "Bananas", "Beans", "Beef", "Beets", "Bell Peppers", "Blueberries", "Brussels Sprouts", "Cabbage", "Cane Berries", "Carrots", "Cauiflower", "Celery", "Cheese", "Cherries", "Chicken", "Corn", "Cranberries", "Cucumber", "Eggplant", "Eggs", "Garlic", "Grapes", "Green Beans", "Herbs", "Hot Peppers", "Kale", "Kiwi", "Leafy Greens", "Leeks", "Lentils", "Mangos", "Microgreens", "Milk", "Mushrooms", "Oats", "Onions", "Oranges", "Parsnips", "Peaches", "Pears", "Peas", "Pineapple", "Pork", "Potatoes", "Pumpkin", "Radishes", "Rhubarb", "Rice", "Salad Greens", "Salmon", "Spinach", "Split Peas", "Strawberries", "Summer Squash", "Sweet Potato", "Tofu", "Tomatoes", "Tuna", "Turkey", "Turnips", "Water", "Watermelon", "Wheat", "Whole Grains", "Winter Squash", "Yogurt"]*/

    @State var chosenIngredients = [Ingredient]()
    @State var validRecipes = [Recipe]()
    //@State var isOrange = true
    @State var isIncluded = [Bool] (repeating: false, count: ingredients.count)
    
    var body: some View {
        VStack{
            List {
                ForEach(ingredients.indices, id: \.self){ index in
                    HStack{
                        Text(ingredients[index].name)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.orange)
                        Spacer()
                        Toggle(isOn: $isIncluded[index], label: {
                            Text("")
                        })
                    }
                }
               /* ForEach(ingredients, id: \.self){ ingredient in
                    Button(action: {
                        isOrange.toggle()
                        chosenIngredients.append(ingredient)
                    }, label: {
                        Text(ingredient.name)
                            .fontWeight(.semibold)
                    })
                   
                    
                }*/
            }
            //.foregroundColor(isOrange ? .orange : .white)
//            .navigationTitle("Ingredients")
//            HStack{
//            NavigationLink(
//                destination: Spices(),
//                label:{
//                    Text("Spices")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.orange)
//                })
//                .padding()
           /* NavigationLink(
                destination: KitchenTools(),
                label:{
                    Text("Kitchen Tools")
                })*/
//            }
            NavigationLink(destination: ValidRecipesView(isIncluded: isIncluded),
                           label: {
                            Text("Find Recipes")
                           })
        }
    }
}


struct ListOfIngredients_Previews: PreviewProvider {
    static var previews: some View {
        ListOfIngredients()
    }
}
