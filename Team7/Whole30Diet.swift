//
//  Whole30Diet.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Whole30Diet: View {
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

struct Whole30Diet_Previews: PreviewProvider {
    static var previews: some View {
        Whole30Diet()
    }
}
