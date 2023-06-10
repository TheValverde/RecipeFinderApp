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
        ZStack{
            BackgroundView()
            VStack(alignment: .leading, spacing: 20) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Difficulty: \(recipe.difficulty)")
                    .font(.title2)
                Text("Ingredients")
                    .font(.title)
                    .padding(.top)
                ForEach(recipe.ingredients) { ingredient in
                    HStack {
                        Text(ingredient.name)
                            .font(.headline)
                        Spacer()
                        Text("\(ingredient.quantity, specifier: "%.2f") \(ingredient.unit)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                }
            }
            
            .padding()
        }
    }
}

struct DetailedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedRecipeView(recipe: Recipe(name: "LOL NERD", ingredients: [Ingredient(name: "Cheese", quantity: 1, unit: "Slice")], difficulty: "Easy"))
    }
}
