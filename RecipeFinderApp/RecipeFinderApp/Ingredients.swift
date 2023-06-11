//
//  Ingredients.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import Foundation

struct Ingredient: Identifiable, Equatable {
    let id = UUID()
    let name: String
    var quantity: Double
    let unit: String
    let calories: Double?

    init(name: String, quantity: Double, unit: String, calories: Double? = nil) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
        self.calories = calories
    }
}

