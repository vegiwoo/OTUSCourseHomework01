//
//  FoodDetailScreen.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 27.02.2021.
//

import SwiftUI

struct FoodDetailScreen: View {
        
    let food: Food
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.white, Color(food.averageColor ?? .white)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 25, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
            VStack {
                Text(food.emoji).font(Font.system(size: 200))
                Text(food.name).font(.largeTitle).foregroundColor(Color(food.averageColor ?? .white))
            }
        }
        .ignoresSafeArea()
        .navigationBarTitle("\(food.name)",displayMode: .inline)
    }
}

struct FoodDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailScreen(food: Food(name: "Apple", emoji: "🍏", isFavorite: true))
    }
}
