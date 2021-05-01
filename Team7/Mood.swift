//
//  Mood.swift
//  Team7
//
//  Created by Amanda Brode on 4/27/21.
//

import SwiftUI
var dietmood = [DietMoodType(name: "Vegan"),
                   DietMoodType(name: "Low Sodium "),
                   DietMoodType(name: "Whole 30"),
                   DietMoodType(name: "Gluten")
]
var ethnicMood = [EthnicMoodType(name: "American"),
                   EthnicMoodType(name: "Chineese"),
                   EthnicMoodType(name: "Greek"),
                   EthnicMoodType(name: "Italian"),
                   EthnicMoodType(name: "Mexican")
]

struct Mood: View {
    @State var isIncluded = [Bool] (repeating: false, count: ingredients.count)
    
    var body: some View {
        VStack{
        List {
            Text("Select your Diet Option:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            ForEach(dietmood.indices, id: \.self){ index in
                HStack{
                    Text(dietmood[index].name)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                    Spacer()
                    Toggle(isOn: $isIncluded[index], label: {
                        Text("")
                    })
                }
            }
        }
           /* List {
            Text("Select your Ethnic Option:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            ForEach(ethnicMood.indices, id: \.self){ index in
                HStack{
                    Text(ethnicMood[index].name)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                    Spacer()
                    Toggle(isOn: $isIncluded[index], label: {
                        Text("")
                    })
                }
            }
        }*/
            NavigationLink(
                destination: Recipes(),
                label:{
                    Text("Voila")
                })
        }
}
}

struct Mood_Previews: PreviewProvider {
    static var previews: some View {
        Mood()
    }
}
