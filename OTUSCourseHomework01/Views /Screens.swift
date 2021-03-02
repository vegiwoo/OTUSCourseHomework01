//
//  Screens.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

enum Screens: CaseIterable, CustomStringConvertible {
    case dashboard, food, about
    
    var description: String {
        switch self {
        case .dashboard:
            return "Home"
        case .food:
            return "Food"
        case .about:
            return "About us"
        }
    }
    
    var icon: Image {
        switch self {
        case .dashboard:
            return Image(systemName: "house")
        case .food:
            return Image(systemName: "cart")
        case .about:
            return Image(systemName: "info")
        }
    }
}
