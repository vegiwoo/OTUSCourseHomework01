//
//  View + Ext.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 01.03.2021.
//

import SwiftUI

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: .init(colors: colors),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
            .mask(self)
    }
}
