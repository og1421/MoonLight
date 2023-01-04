//
//  AstronautView.swift
//  MoonLight
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView{
            VStack{
                Image("\(astronaut.id)")
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        .accessibilityElement()
        .accessibilityLabel(astronaut.name)
    }
}

