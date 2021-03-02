//
//  FoodScreen.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct FoodScreen: View  {
    @EnvironmentObject var appState: AppState
    @Environment(\.horizontalSizeClass) var sizeClass
    @State var favoriteShowes: Bool = false
    @State var selectedItemId: String?
    
    var navigationLink: NavigationLink<EmptyView, FoodDetailScreen>? {
        guard let selectedFoodUUID = selectedItemId else { return nil }
        guard let selectedFood = appState.foodScreenVM.foods.first(where: {$0.id == selectedFoodUUID}) else { return nil }
        
        return NavigationLink(
            destination: FoodDetailScreen(food: selectedFood),
            tag:  selectedFoodUUID,
            selection: $selectedItemId
        ) {
            EmptyView()
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                navigationLink
                List {
                    FilterView(favoriteShowes: $favoriteShowes)
                    ForEach(appState.foodScreenVM.foods) { item in
                        if !favoriteShowes || item.isFavorite {
                            FoodListCell(food: item, selectedItemId: $selectedItemId)
                                .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
                                .listRowInsets(EdgeInsets())
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                        }
                    }
                }.navigationTitle(Text("Foods")).listStyle(InsetListStyle())
            }
        }
        .onAppear{
            if sizeClass == .regular {
                selectedItemId = appState.foodScreenVM.foods[0].name
            } else {
                selectedItemId = nil
            }
        }.onChange(of: appState.quickLink, perform: { value in
            if value {
                selectedItemId = nil
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    selectedItemId = appState.getRandomFoodName()
                }
            }
        })
    }
}

struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodScreen()
    }
}
