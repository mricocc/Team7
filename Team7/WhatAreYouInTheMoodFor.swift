//
//  WhatAreYouInTheMoodFor.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct WhatAreYouInTheMoodFor: View {
    var body: some View {
        HStack{
            NavigationLink(
                destination: Diet(),
                label:{
                    Text("Select by Diet")
                })
                .padding()
            NavigationLink(
                destination: Ethnicity(),
                label:{
                    Text("Select by Ethnicity")
                })
            
        }
    }
}


struct WhatAreYouInTheMoodFor_Previews: PreviewProvider {
    static var previews: some View {
        WhatAreYouInTheMoodFor()
    }
}
