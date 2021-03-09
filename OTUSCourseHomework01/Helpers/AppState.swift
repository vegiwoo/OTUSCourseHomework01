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
    @Published var quickLink: Bool = false {
        didSet {
            randomFood = quickLink ? getRandomFood() : nil
        }
    }
    @Published var randomFood: Food?
    
    
    
    
    func getRandomFood() -> Food {
        return foodScreenVM.foods.randomElement()!
    }
}
