//
//  Ethnicity.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Ethnicity: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: American(),
                label:{
                    Text("American")
                })
                .padding()
            NavigationLink(
                destination: American(),
                label:{
                    Text("Mexican")
                })
        }
    }
}

struct Ethnicity_Previews: PreviewProvider {
    static var previews: some View {
        Ethnicity()
    }
}
