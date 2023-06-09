//
//  IngredientInputView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

struct IngredientInputView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var ingredient = ""

    var body: some View {
        HStack {
            TextField("Enter ingredient", text: $ingredient)
            Button(action: {
                viewModel.userIngredients.append(ingredient)
                ingredient = ""
                print(viewModel.userIngredients)  // This will print to console whenever an ingredient is added
            }) {
                Text("Add")
            }

        }
    }
}


struct IngredientInputView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientInputView().environmentObject(RecipeViewModel())
    }
}
