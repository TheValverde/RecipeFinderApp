//
//  Ingredients.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    var quantity: Double
    let unit: String
}
