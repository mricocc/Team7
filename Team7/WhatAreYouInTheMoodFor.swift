//
//  WhatAreYouInTheMoodFor.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct WhatAreYouInTheMoodFor: View {
    var body: some View {
        VStack{
            Text("What are you in the mood for?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom])
                
        HStack{
            NavigationLink(
                destination: Diet(),
                label:{
                    Text("Select by Diet")
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                })
                .padding()
            NavigationLink(
                destination: Ethnicity(),
                label:{
                    Text("Select by Ethnicity")
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                })
            }
        }
    }
}

struct WhatAreYouInTheMoodFor_Previews: PreviewProvider {
    static var previews: some View {
        WhatAreYouInTheMoodFor()
    }
}
