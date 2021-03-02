//
//  FoodScreenVM.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

final class FoodScreenVM: ObservableObject {
    
    @Published private(set) var foods = [
        Food(name:"Apple", emoji:"🍏", isFavorite: true),
        Food(name:"Pear", emoji:"🍐", isFavorite: true),
        Food(name:"Mandarin", emoji:"🍊", isFavorite: false),
        Food(name:"Banana", emoji:"🍌", isFavorite: true),
        Food(name:"Watermelon", emoji:"🍉", isFavorite: false),
        Food(name:"Strawberry", emoji:"🍓", isFavorite: false),
        Food(name:"Blueberry", emoji:"🫐", isFavorite: true),
        Food(name:"Cherry", emoji:"🍒", isFavorite: false),
        Food(name:"Peach", emoji:"🍑", isFavorite: true),
        Food(name:"Mango", emoji:"🥭", isFavorite: false),
        Food(name:"Coconut", emoji:"🥥", isFavorite: false),
        Food(name:"Kiwi", emoji:"🥝", isFavorite: true),
        Food(name:"Tomato", emoji:"🍅", isFavorite: false),
        Food(name:"Cucumber", emoji:"🥒", isFavorite: true),
        Food(name:"Spicy pepper", emoji:"🌶", isFavorite: false),
        Food(name:"Corn", emoji:"🌽", isFavorite: false),
        Food(name:"Carrot", emoji:"🥕", isFavorite: true),
        Food(name:"Eggplant", emoji:"🍆", isFavorite: false),
        Food(name:"Avocado", emoji:"🥑", isFavorite: true),
        Food(name:"Broccoli", emoji:"🥦", isFavorite: true)
    ]
}
