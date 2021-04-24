//
//  VeganDiet.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct VeganDiet: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: Ethnicity(),
                label:{
                    Text("Check out Ethnic options")
                })
                .padding()
            NavigationLink(
                destination: Recipes(),
                label:{
                    Text("Check out Recipes")
                })
            
            
        }
    }
}


struct VeganDiet_Previews: PreviewProvider {
    static var previews: some View {
        Diet()
    }
}
