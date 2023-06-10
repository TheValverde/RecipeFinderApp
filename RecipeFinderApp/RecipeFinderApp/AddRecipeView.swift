//
//  AddRecipeView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State var recipeName: String = ""
    @State var recipeDifficulty: String = ""
    @State var ingredientName: String = ""
    @State var ingredientQuantity: Double = 0
    @State var ingredientUnit: String = ""
    @State var ingredients: [Ingredient] = []

    var body: some View {
        ZStack{
            BackgroundView()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Add Recipe")
                        .font(.title)
                        .fontWeight(.bold)
                    TextField("Recipe Name", text: $recipeName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Difficulty (Easy/Medium/Hard)", text: $recipeDifficulty)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Add Ingredients")
                        .font(.title)
                        .padding(.top)
                    TextField("Ingredient Name", text: $ingredientName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Quantity", value: $ingredientQuantity, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Unit (e.g., cup)", text: $ingredientUnit)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add Ingredient", action: {
                        ingredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: ingredientUnit))
                        ingredientName = ""
                        ingredientQuantity = 0
                        ingredientUnit = ""
                    })
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    ForEach(ingredients) { ingredient in
                        Text("\(ingredient.name): \(ingredient.quantity, specifier: "%.2f") \(ingredient.unit)")
                    }

                    Button("Save Recipe", action: {
                        let recipe = Recipe(name: recipeName, ingredients: ingredients, difficulty: recipeDifficulty)
                        viewModel.addRecipe(recipe)
                        recipeName = ""
                        recipeDifficulty = ""
                        ingredients = []
                    })
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView().environmentObject(RecipeViewModel())
    }
}
