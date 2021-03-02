//
//  CircleButton.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 01.03.2021.
//

import SwiftUI

struct CircleButton: View {
    
    let gradientColors: [Color]
    let maxWidth: CGFloat
    let maxHeight: CGFloat
    let text: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(maxWidth: maxWidth, maxHeight: maxHeight, alignment: .center)
                .foregroundColor(.white)
            Text("\(text)".uppercased())
                .fontWeight(.black)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .gradientForeground(colors: gradientColors)
            Circle()
                .strokeBorder(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing), lineWidth: 3.0, antialiased: true)
                .frame(maxWidth: maxWidth, maxHeight: maxHeight, alignment: .center)
        }
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(gradientColors: [Color.red, Color.green], maxWidth: 150, maxHeight: 150, text: "Pick\na random\nmeal")
    }
}
