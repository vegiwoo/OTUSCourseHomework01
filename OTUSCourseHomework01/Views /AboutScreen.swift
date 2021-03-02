//
//  AboutScreen.swift
//  OTUSCourseHomework01
//
//  Created by Dmitry Samartcev on 26.02.2021.
//

import SwiftUI

struct AboutScreen: View  {
    
    @State private var showCredits: Bool = false
    let logo = "🌽"
    @State var averageColor: UIColor?
    
    var body: some View {
        VStack {
            Text(logo).font(Font.system(size: 100).weight(.light))
            Text("Food4You".uppercased()).font(Font.system(size: 60).weight(.light)).gradientForeground(colors: [averageColor != nil ? Color(averageColor!) : Color.white, .green])
            Spacer().frame(height: 20)
            Button(action: {
                showCredits.toggle()
            }) {
                Text("Version 1.0.0")
            }
        }.onAppear{
            if let image = logo.image() {
                averageColor = image.averageColor
            }
        }
        .sheet(isPresented: $showCredits) {
            Text("Created by Dmitry Samartcev on 26.02.2021")
                .font(Font.system(size: 36))
                .multilineTextAlignment(.center)
                .padding()
            
        }
    }
}

struct AboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutScreen()
    }
}
