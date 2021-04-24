//
//  KitchenTools.swift
//  Team7
//
//  Created by Amanda Brode on 4/19/21.
//

import SwiftUI

struct KitchenTools: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: ListOfKitchenTools(),
                label:{
                    Text("Select your Kitchen Tools")
                })
        }
    }
}

struct KitchenTools_Previews: PreviewProvider {
    static var previews: some View {
        KitchenTools()
    }
}
