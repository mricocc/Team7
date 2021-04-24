//
//  American.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct American: View {
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

struct American_Previews: PreviewProvider {
    static var previews: some View {
        American()
    }
}
