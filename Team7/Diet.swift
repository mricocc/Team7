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
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
                .padding()
            NavigationLink(
                destination: SodiumDiet(),
                label:{
                    Text("Sodium")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
                .padding()
            NavigationLink(
                destination: Whole30Diet(),
                label:{
                    Text("Whole 30")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
                .padding()
            NavigationLink(
                destination: GlutenDiet(),
                label:{
                    Text("Gluten")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
            
        }
    }
}


struct Diet_Previews: PreviewProvider {
    static var previews: some View {
        Diet()
    }
}
