//
//  Food.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct Food {
    let name: String
    let emoji: String
    var isFavorite: Bool
    var averageColor: UIColor?

    init(name: String, emoji: String, isFavorite: Bool) {
        self.name = name
        self.emoji = emoji
        self.isFavorite = isFavorite
        getAverageColor()
    }

    mutating private func getAverageColor() {
        let uiImage = emoji.image()
        averageColor = uiImage?.averageColor
    }
}

extension Food: Identifiable {
    var id: String { name }
}
