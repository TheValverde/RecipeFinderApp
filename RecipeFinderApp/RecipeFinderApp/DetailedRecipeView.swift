//
//  DetailedRecipeView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct DetailedRecipeView: View {
    
    var recipe : Recipe

    var body: some View {
        ZStack{
            BackgroundView()
            Text(recipe.name)
        }
    }
}

struct DetailedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedRecipeView(recipe: Recipe(name: "LOL NERD", ingredients: [Ingredient(name: "Cheese", quantity: 1, unit: "Slice")], difficulty: "Easy"))
    }
}
