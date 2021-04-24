//
//  GlutenDiet.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct GlutenDiet: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: Recipes(),
                label:{
                    Text("Awesome Choice lets checkout what we can make.")
                })
        }
    }
}

struct GlutenDiet_Previews: PreviewProvider {
    static var previews: some View {
        GlutenDiet()
    }
}
