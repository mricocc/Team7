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
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
                .padding()
            NavigationLink(
                destination: American(),
                label:{
                    Text("Mexican")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                })
        }
    }
}

struct Ethnicity_Previews: PreviewProvider {
    static var previews: some View {
        Ethnicity()
    }
}
