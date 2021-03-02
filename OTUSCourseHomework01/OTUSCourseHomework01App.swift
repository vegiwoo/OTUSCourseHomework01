//
//  OTUSCourseHomework01App.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

@main
struct OTUSCourseHomework01App: App {
    
    var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainScreen().environmentObject(appState)
        }
    }
}
