//
//  HomeView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Title(text: "Recipe Finder")
                IngredientInputView().environmentObject(viewModel)
                Divider()
                RecipeListView().environmentObject(viewModel)
            }.padding(.top, 20)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(RecipeViewModel())
    }
}
