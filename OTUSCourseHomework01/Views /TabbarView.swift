//
//  TabbarView.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct TabbarView: View {

    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.selectedTab) {
            DashboardScreen().tabItem {
                Text("\(Screens.dashboard.description)")
                Screens.dashboard.icon
            }
            .tag(TabbarView.Tab.dashboardScreen)
            .environmentObject(appState)
            
            FoodScreen().tabItem {
                Text("\(Screens.food.description)")
                Screens.food.icon
            }
            .tag(TabbarView.Tab.foodScreen)
            .environmentObject(appState)
            
            AboutScreen().tabItem {
                Text("\(Screens.about.description)")
                Screens.about.icon
            }
            .tag(TabbarView.Tab.aboutScreen)
            .environmentObject(appState)
        }
        .accentColor(.black)
    }
}

extension TabbarView {
    enum Tab: Hashable {
        case dashboardScreen
        case foodScreen
        case aboutScreen
    }
}
