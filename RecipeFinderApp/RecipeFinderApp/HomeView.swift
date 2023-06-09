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
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    Text("Recipe Finder")
                        .fontWeight(.bold)
                        .font(.system(size:50))
                        .padding(.bottom, 10)
                    IngredientInputView().environmentObject(viewModel)
                    Divider()
                    RecipeListView().environmentObject(viewModel)
                }.padding(.top, 20)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
