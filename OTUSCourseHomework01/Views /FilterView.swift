//
//  FilterView.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 27.02.2021.
//

import SwiftUI

struct FilterView: View {
    @Binding var favoriteShowes: Bool
    
    var body: some View {
        Toggle(isOn: $favoriteShowes) {
            Text("Favorites")
        }
        .toggleStyle(SwitchToggleStyle(tint: .orange))
    }
}

struct FilterView_Previews: PreviewProvider {

    static var previews: some View {
        FilterView(favoriteShowes: .constant(true))
    }
}
