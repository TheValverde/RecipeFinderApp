//
//  Recipe.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let difficulty: String
    let description: String?
    var calories: String {
        var totalCalories = 0.0
        for ingredient in ingredients {
            totalCalories += ingredient.calories ?? 0
        }
        return totalCalories > 0 ? "\(totalCalories)" : "N/A"
    }
    let steps: [String]?

    init(name: String, ingredients: [Ingredient], difficulty: String, description: String? = nil, steps: [String]? = nil) {
        self.name = name
        self.ingredients = ingredients
        self.difficulty = difficulty
        self.description = description
        self.steps = steps
    }
}

