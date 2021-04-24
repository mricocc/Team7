//
//  SodiumDiet.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct SodiumDiet: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: Recipes(),
                label:{
                    Text("Awesome choice lets checkout what we can make.")
                })
        }
    }
}
struct SodiumDiet_Previews: PreviewProvider {
    static var previews: some View {
        SodiumDiet()
    }
}
