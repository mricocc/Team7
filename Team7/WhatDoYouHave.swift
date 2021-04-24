//
//  WhatDoYouHave.swift
//  Team7
//
//  Created by Amanda Brode on 4/18/21.
//

import SwiftUI

struct WhatDoYouHave: View {
    var body: some View {
        
        VStack{
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
            NavigationLink(
                destination: KitchenTools(),
                label:{
                    Text("Kitchen Tools")
                })
        }
    }
}


struct WhatDoYouHave_Previews: PreviewProvider {
    static var previews: some View {
        WhatDoYouHave()
    }
}
