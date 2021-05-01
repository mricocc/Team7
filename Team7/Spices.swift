//
//  Spices.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct Spices: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: ListOfSpices(),
                label:{
                    Text("Select your Spices")
                        .fontWeight(.semibold)
                        .foregroundColor(.orange)
                        .font(.system(size: 30))
                })
        }
    }
}

struct Spices_Previews: PreviewProvider {
    static var previews: some View {
        Spices()
    }
}

