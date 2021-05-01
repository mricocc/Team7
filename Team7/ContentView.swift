//
//  ContentView.swift
//  Team7
//
//  Created by Amanda Brode on 4/18/21.
//

import SwiftUI

//struct

struct ContentView: View {

    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(
                    destination: WhatDoYouHave(),
                    label:{
                        /*ZStack{
                            Color.black
                               .edgesIgnoringSafeArea(.all)*/
                            Text("Voilà")
                                .foregroundColor(.orange)
                                .font(.system(size: 60))
                                .bold()
                                .padding()
                    //}
                })
            }
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




