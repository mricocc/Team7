//
//  ListOfSpices.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI
var spices = [Spice(name: "Allspice"),
                   Spice(name: "Angelica"),
                   Spice(name: "Anise"),
                   Spice(name: "Asafoetida"),
                   Spice(name: "Bay Leaf"),
                   Spice(name: "Basil"),
                   Spice(name: "Bergamot"),
                   Spice(name: "Black Cumin"),
                   Spice(name: "Black Mustard"),
                   Spice(name: "Black Pepper"),
                   Spice(name: "Borage"),
                   Spice(name: "Brown Mustard"),
                   Spice(name: "Burnet"),
                   Spice(name: "Caraway"),
                   Spice(name: "Cardamom"),
                   Spice(name: "Cassia"),
                   Spice(name: "Catnip"),
                   Spice(name: "Cayenne Pepper"),
                   Spice(name: "Celery Seed"),
                   Spice(name: "Chervil"),
                   Spice(name: "Chicory"),
                   Spice(name: "Chilli Pepper"),
                   Spice(name: "Costmary"),
                   Spice(name: "Cumin"),
                   Spice(name: "Curry"),
                   Spice(name: "Dill"),
                   Spice(name: "Fennel"),
                   Spice(name: "Fenugreek"),
                   Spice(name: "Filé"),
                   Spice(name: "Ginger"),
                   Spice(name: "Grains of Paradise"),
                   Spice(name: "Holy Basil"),
                   Spice(name: "Horseradish"),
                   Spice(name: "Hyssop"),
                   Spice(name: "Lavender"),
                   Spice(name: "Lemon Balm"),
                   Spice(name: "Lemon Grass"),
                   Spice(name: "Lemon Verbena"),
                   Spice(name: "Licorice"),
                   Spice(name: "Lovage"),
                   Spice(name: "Mace"),
                   Spice(name: "Marjoram"),
                   Spice(name: "Nutmeg"),
                   Spice(name: "Oregano"),
                   Spice(name: "Paprika"),
                   Spice(name: "Parsley"),
                   Spice(name: "Peppermint"),
                   Spice(name: "Poppy Seed"),
                   Spice(name: "Rosemary"),
                   Spice(name: "Rue"),
                   Spice(name: "Saffron"),
                   Spice(name: "Sage"),
                   Spice(name: "Salt"),
                   Spice(name: "Sesame"),
                   Spice(name: "Sorrel"),
                   Spice(name: "Star Anise"),
                   Spice(name: "Spearmint"),
                   Spice(name: "Tarragon"),
                   Spice(name: "Thyme"),
                   Spice(name: "Turmeric"),
                   Spice(name: "Vanilla"),
                   Spice(name: "Wasabi"),
                   Spice(name: "Whit Mustard")
                  
]

struct ListOfSpices: View {
   /* @State var items: [String] = ["Allspice", "Angelica", "Anise", "Asafoetida", "Bay Leaf", "Basil", "Bergamot", "Black Cumin", "Black Mustard", "Black Pepper", "Borage", "Brown Mustard", "Burnet", "Caraway", "Cardamom", "Cassia", "Catnip", "Cayenne Pepper", "Celery Seed", "Chervil", "Chicory", "Chilli Pepper", "Chives", "Cicely", "Cilantro", "Cinnamon", "Clove", "Coriander", "Costmary", "Cumin", "Curry", "Dill", "Fennel", "Fenugreek", "Filé", "Ginger", "Grains of Paradise", "Holy Basil", "Horseradish", "Hyssop", "Lavender", "Lemon Balm", "Lemon Grass", "Lemon Verbena", "Licorice", "Lovage", "Mace", "Marjoram", "Nutmeg", "Oregano", "Paprika", "Parsley", "Peppermint", "Poppy Seed", "Rosemary", "Rue", "Saffron", "Sage", "Sesame", "Sorrel", "Star Anise", "Spearmint", "Tarragon", "Thyme", "Turmeric", "Vanilla", "Wasabi", "Whit Mustard"]*/
    @State var selections: [String] = []
    @State var chosenSpices = [Spice]()
    @State var ingredientIsIncluded = [Bool]()
    @State var spiceIsIncluded = [Bool] (repeating: false, count: spices.count)
    
    var body: some View {
        VStack{
            List {
                ForEach(spices.indices, id: \.self){ index in
                    HStack{
                        Text(spices[index].name)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.orange)
                        Spacer()
                        Toggle(isOn: $spiceIsIncluded[index], label: {
                            Text("")
                        })
                    }
                }
                
                /*ForEach(self.items, id: \.self) { item in MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                    }
                }*/
            }
            .navigationTitle("Select your Spices")
            HStack{
                /*NavigationLink(
                    destination: Ingredients(),
                    label:{
                        Text("Ingredients")
                    })
                    .padding()*/
//                NavigationLink(
//                    destination: Mood(),
//                    label:{
//                        Text("Are you ready to decide what you are in the mood for?")
//                            .fontWeight(.bold)
//                            .foregroundColor(Color.orange)
//                            .multilineTextAlignment(.center)
//                    })
//                    .padding()
                
                NavigationLink(destination: ValidRecipesView(ingredientIsIncluded: ingredientIsIncluded, spiceIsIncluded: spiceIsIncluded),
                               label: {
                                Text("Find Recipes")
                               })
                /*
                NavigationLink(
                    destination: KitchenTools(),
                    label:{
                        Text("Kitchen Tools")
                    })
                 */
            }
        }
    }
}

struct ListOfSpices_Previews: PreviewProvider {
    static var previews: some View {
        ListOfSpices()
    }
}
