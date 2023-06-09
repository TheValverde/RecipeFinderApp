//
//  Recipe.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import Foundation

struct Recipe: Identifiable{
    
    var id = UUID()
    var name : String
    var ingredients : [String]
    var difficulty : String
}
