//
//  ContentView.swift
//  MoonLight
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var gridLayout = true
    @State private var animationAmount = 2.0
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                if gridLayout{
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("MoonLight")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar{
                Button(gridLayout ? "List Layout" : "Grid Layout"){
                    gridLayout.toggle()
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
