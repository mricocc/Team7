//
//  Diet.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Diet: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: VeganDiet(),
                label:{
                    Text("Vegan")
                })
                .padding()
            NavigationLink(
                destination: SodiumDiet(),
                label:{
                    Text("Sodium")
                })
                .padding()
            NavigationLink(
                destination: Whole30Diet(),
                label:{
                    Text("Whole 30")
                })
                .padding()
            NavigationLink(
                destination: GlutenDiet(),
                label:{
                    Text("Gluten")
                })
            
        }
    }
}


struct Diet_Previews: PreviewProvider {
    static var previews: some View {
        Diet()
    }
}
