//
//  Color-Theme.swift
//  MoonLight
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color{
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.2)
    }
    
    static var lightGrayBackground: Color{
        Color(red: 236 / 255, green: 236 / 255, blue: 236 / 255)
    }
}
