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
        Text(recipe.name)
    }
}

struct DetailedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedRecipeView(recipe: Recipe(name: "NB", ingredients: [Ingredient(name: "Cheese", quantity: 1, unit: "Slice")], difficulty: "Easy"))
    }
}
