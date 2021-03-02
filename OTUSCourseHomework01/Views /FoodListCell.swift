//
//  FoodListCell.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 27.02.2021.
//

import SwiftUI

struct FoodListCell: View {
    
    let food: Food
    let randomTag: UUID = .init()
    @Binding var selectedItemId: String?
    
    var body: some View {
        HStack {
            Text("\(food.emoji)").font(.largeTitle).padding(10)
            Text(food.name)
            Spacer()
            if food.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color(UIColor.systemGray3))
            }
        }.background(LinearGradient(gradient: Gradient(colors: [Color(food.averageColor ?? .white), Color.white]), startPoint: .leading, endPoint: .trailing))
        .onTapGesture {
            selectedItemId = food.id
        }
    }
}

struct FoodListCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodListCell(food: Food(name: "Apple", emoji: "🍏", isFavorite: true), selectedItemId: .constant("Apple")).frame(width: 400, height: 80, alignment: .leading)
    }
}
