//
//  RecipeViewModel.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI
import Combine

class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = [
        Recipe(name: "Pasta", ingredients: ["Pasta", "Tomato", "Garlic"], difficulty: "Easy"),
        Recipe(name: "Pizza", ingredients: ["Flour", "Yeast", "Tomato", "Cheese"], difficulty: "Medium")
    ]
    @Published var userIngredients: [String] = []
}

