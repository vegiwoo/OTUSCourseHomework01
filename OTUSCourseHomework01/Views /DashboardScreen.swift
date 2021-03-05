//
//  DashboardScreen.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct DashboardScreen: View  {

    @EnvironmentObject var appState: AppState
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        GeometryReader { geometry in
            CircleButton(gradientColors: [.orange, .green], maxWidth: .infinity, maxHeight: sizeClass == .compact ? geometry.size.width / 3 : geometry.size.height, text: "Pick\na random\nfood")
                .onTapGesture {
                    appState.selectedTab = .foodScreen
                    appState.quickLink = true
                }
        }.frame(width: sizeClass == .compact ? 400 : 700, height: 150, alignment: .center)
        .onAppear{
            appState.selectedTab = .dashboardScreen
            appState.quickLink = false
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}

