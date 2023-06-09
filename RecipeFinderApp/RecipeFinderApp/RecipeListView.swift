//
//  RecipeListView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var viewModel: RecipeViewModel

    var body: some View {
        List {
            ForEach(viewModel.recipes) { recipe in
                let requiredIngredients = recipe.ingredients
                if hasEnoughIngredients(userIngredients: viewModel.userIngredients, requiredIngredients: requiredIngredients) {
                    Text(recipe.name)
                }
            }
        }
    }

    // This function checks if the user has enough of each ingredient required for a recipe.
    func hasEnoughIngredients(userIngredients: [Ingredient], requiredIngredients: [Ingredient]) -> Bool {
        for requiredIngredient in requiredIngredients {
            // Check if the user has this ingredient
            if let userIngredient = userIngredients.first(where: { $0.name == requiredIngredient.name && $0.unit == requiredIngredient.unit }) {
                // Check if the user has enough of this ingredient
                if userIngredient.quantity < requiredIngredient.quantity {
                    return false
                }
            } else {
                return false
            }
        }
        // If we've made it through all the required ingredients without returning false, then the user has enough of everything.
        return true
    }
}




struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeViewModel())
    }
}
