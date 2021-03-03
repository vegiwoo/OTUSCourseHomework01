//
//  AppState.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 01.03.2021.
//

import SwiftUI

final class AppState: ObservableObject {
    
    @Published var foodScreenVM: FoodScreenVM = .init()
    @Published var selectedTab: TabbarView.Tab = .foodScreen
    @Published var quickLink: Bool = false
    
    func getRandomFoodName() -> String? {
        if let randomElement = foodScreenVM.foods.randomElement() {
            return randomElement.id
        } else {
            return nil
        }
    }
}
