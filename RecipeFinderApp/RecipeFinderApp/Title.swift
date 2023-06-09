//
//  Title.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct Title: View {
    var text: String
    var body: some View {
        Text("Recipe Finder")
            .fontWeight(.bold)
            .font(.system(size:50))
            .padding(.bottom, 10)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(text: "Title")
    }
}
