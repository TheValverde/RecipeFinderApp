//
//  IngredientInputView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

struct IngredientInputView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var ingredientName = ""
    @State private var ingredientQuantity: String = ""
    @State private var ingredientUnit = ""

    var body: some View {
        HStack {
            TextField("Enter ingredient name", text: $ingredientName)
            TextField("####", text: $ingredientQuantity)
                .frame(width: 50, height: 50)
            TextField("Enter unit", text: $ingredientUnit)
            Button(action: {
                if let quantity = Double(ingredientQuantity) {
                    let ingredient = Ingredient(name: ingredientName, quantity: quantity, unit: ingredientUnit)
                    viewModel.userIngredients.append(ingredient)
                    ingredientName = ""
                    ingredientQuantity = ""
                    ingredientUnit = ""
                    print(viewModel.userIngredients)  // This will print the userIngredients array to the console
                 
                }
            }) {
                Text("Add")
                    .foregroundColor(.primary)
                    .frame(width: 50, height: 50)
                    .background(Color(.systemMint))
                    .cornerRadius(10)
                
            }
        }.padding(.horizontal, 15)
    }
}




struct IngredientInputView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientInputView().environmentObject(RecipeViewModel())
    }
}
