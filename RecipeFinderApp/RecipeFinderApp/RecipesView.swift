//
//  RecipesView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct RecipesView: View {
    @EnvironmentObject var viewModel: RecipeViewModel

    var body: some View {
        ZStack{
            BackgroundView()
            VStack {
                Text("All Recipes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(viewModel.recipes) { recipe in
                            RecipeListItemView(name: recipe.name, difficulty: recipe.difficulty, destination: AnyView(DetailedRecipeView(recipe: recipe).environmentObject(viewModel)))
                        }
                    }
                    
                    .padding(.horizontal)
                }.padding(.bottom, 45)
            }
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView().environmentObject(RecipeViewModel())
    }
}
