//
//  RecipeListView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var viewModel: RecipeViewModel

    var body: some View {
        List {
            ForEach(viewModel.recipes) { recipe in
                if Set(recipe.ingredients).isSubset(of: Set(viewModel.userIngredients)) {
                    Text(recipe.name)
                }
            }
        }
    }
}



struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeViewModel())
    }
}
