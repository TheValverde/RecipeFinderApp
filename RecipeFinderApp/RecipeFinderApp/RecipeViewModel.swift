//
//  RecipeViewModel.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI
import Combine

class RecipeViewModel: ObservableObject {
    @Published var userIngredients: [Ingredient] = []
    @Published var activeView: ActiveView = .home
    @Published var recipes: [Recipe] = [
        Recipe(name: "Pasta", ingredients:
                [Ingredient(name: "Pasta", quantity: 2, unit: "Cups"),
                Ingredient(name: "Tomato", quantity: 1, unit: "Whole"),
                Ingredient(name: "Garlic", quantity: 2, unit: "Cloves")],
               difficulty: "Easy"),
        Recipe(name: "Pizza", ingredients:
                [Ingredient(name: "Flour", quantity: 2, unit: "Cups"),
                Ingredient(name: "Yeast", quantity: 1, unit: "Packet"),
                Ingredient(name: "Tomato", quantity: 1, unit: "Whole"),
                Ingredient(name: "Cheese", quantity: 1, unit: "Cup")],
               difficulty: "Medium"),
        Recipe(name: "Grilled Cheese", ingredients:
                [Ingredient(name: "Bread", quantity: 2, unit: "Slices"),
                 Ingredient(name: "Cheese", quantity: 1, unit: "Slices")],
               difficulty: "Easy"),
        Recipe(name: "Porkchops", ingredients:
                [Ingredient(name: "Porkchop", quantity: 2, unit: "Chops"),
                 Ingredient(name: "Olive Oil", quantity: 1, unit: "Cups"),
                 Ingredient(name: "Black Ground Pepper", quantity: 2, unit: "Teaspoons"),
                 Ingredient(name: "MSG", quantity: 1, unit: "Dash"),
                 Ingredient(name: "Salt", quantity: 1, unit: "Teaspoons")],
               difficulty: "Easy"),
        Recipe(name: "Debug but I want to make the name really long", ingredients:
                [Ingredient(name: "Debug", quantity: 1, unit: "Debug")],
               difficulty: "Debug")
    ]
    
    enum ActiveView { case home, myPantry, recipes, addRecipe, detailedView }

    func addRecipe(_ recipe: Recipe) {
        self.recipes.append(recipe)
    }
    
    func addOrUpdateIngredient(_ ingredient: Ingredient) {
            print("Shit")
            if let index = userIngredients.firstIndex(where: { $0.name == ingredient.name && $0.unit == ingredient.unit }) {
                // The ingredient already exists in the list, so add the quantities.
                userIngredients[index].quantity += ingredient.quantity
            } else {
                // The ingredient does not exist in the list, so append it.
                userIngredients.append(ingredient)
            }
        }
    
    func removeIngredient(_ ingredient: Ingredient) {
            if let index = userIngredients.firstIndex(where: { $0.name == ingredient.name && $0.unit == ingredient.unit }) {
                userIngredients.remove(at: index)
            }
        }
    
}
