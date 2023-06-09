//
//  BackgroundView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct BackgroundView : View{
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.blue, Color.pink, Color.yellow]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

    }
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
