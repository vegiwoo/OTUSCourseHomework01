//
//  MainView.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct MainScreen: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabbarView()
            .environmentObject(appState)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
