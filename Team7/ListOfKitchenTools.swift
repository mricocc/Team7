//
//  ListOfKitchenTools.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct ListOfKitchenTools: View {
    @State var itemKT : [String] = ["Ladle", "Locking Tongs", "Metal Spatula", "Rubber Spatula", "Stiff Spatula", "Offset Spatula", "Slotted spoon", "Ice Cream Scoop", "Whisk", "Wooden Spoon", "Spider Skimmer", "Serving Spoons", "Chopsticks", "Portion Scoops", "Cutting Board", "Chef’s Knife", "Bread Knife", "Paring Knife", "Carving Knife", "Santoku Knife", "Kitchen Shears", "Microplane Grater", "Grater", "Vegetable Peeler", "Honing Steel", "Rolling Pin", "Scale", "Colander", "Nesting Bowl Set", "Wet Measuring Cups", "Dry Measuring Cups", "Measuring Spoons","Garlic Press", "Lemon Press", "Potato Masher", "Can Opener", "Timer", "Instant-Read Thermometer", "Corkscrew", "Peppermill", "Salad Spinner", "Utensil Holder", "Handheld Strainer", "Mortar and Pestle", "Flour Sifter", "Cookware", "Sauté Pan", "Cast Iron Skillet", "Stock Pot", "Saucepan", "Dutch Oven", "Sheet Pan", "Double Boiler", "9 x 13 Baking Dish", "8 x 8 Baking Dish", "Grill Pan", "Broiler Pan", "Stick Blender", "Food Processor", "Hand Mixer", "Stand Mixer", "Spice Grinder", "Milk Frother"]
    
    var body: some View {
        VStack{
        
            List {
                 ForEach(itemKT, id: \.self){ KTool in
                     Text(KTool)
                    
                 }
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
