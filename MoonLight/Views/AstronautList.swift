//
//  AstronautList.swift
//  MoonLight
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import SwiftUI

struct AstronautList: View {
    let image: String
    let name: String
    let role: String
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image("\(image)")
                    .resizable()
                    .frame(width: 150, height: 100)
                    .clipShape(Capsule())
                    .overlay{
                        Capsule()
                            .strokeBorder(.white, lineWidth: 1)
                    }
                
                
                Text(name)
                    .foregroundColor(.white)
                    .font(.headline)
                
                Text(role)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal)
    }
}
