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
}
