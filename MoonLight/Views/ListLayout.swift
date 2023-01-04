//
//  ListLayout.swift
//  MoonLight
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        ForEach(missions){ mission in
            NavigationLink{
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack{
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                    
                    HStack{
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text(mission.fomattedLauchDate)
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.5))
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(.lightBackground)
                }
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.lightBackground)
                )
            }
            .accessibilityLabel(mission.displayName)
            .accessibilityAddTraits(.isButton)
        }
    }
}

//struct ListLayout_Previews: PreviewProvider {
//    static let missions: [Mission] = Bundle.main.decode("missions.json")
//    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
//
//    static var previews: some View {
//        ListLayout(mission: missions[0].mission, astronauts: astronauts)
//            .preferredColorScheme(.dark)
//    }
//}
