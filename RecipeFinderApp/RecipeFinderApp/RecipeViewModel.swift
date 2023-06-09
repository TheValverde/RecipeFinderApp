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
    let recipes: [Recipe] = [
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
        Recipe(name: "Debug", ingredients:
                [Ingredient(name: "Debug", quantity: 1, unit: "Debug")],
               difficulty: "Debug")
    ]
}

