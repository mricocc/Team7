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
                        .fontWeight(.semibold)
                })
                .foregroundColor(.orange)
                .font(.system(size: 30))
                .padding()
            NavigationLink(
                destination: Spices(),
                label:{
                    Text("Spices")
                        .fontWeight(.semibold)
                })
                .foregroundColor(.orange)
                .font(.system(size: 30))
                .padding()
            /*NavigationLink(
                destination: KitchenTools(),
                label:{
                    Text("Kitchen Tools")
                })
                .padding()*/
            .navigationTitle("What do you have?")
                
        }
            .foregroundColor(.orange)
        
            
    }
}


struct WhatDoYouHave_Previews: PreviewProvider {
    static var previews: some View {
        WhatDoYouHave()
    }
}
