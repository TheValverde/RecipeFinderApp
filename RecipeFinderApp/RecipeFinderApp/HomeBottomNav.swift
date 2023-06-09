//
//  HomeBottomNav.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct HomeBottomNav: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            Spacer()

            // Our main content
            TabView(selection: $selectedTab) {
                ContentView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }.tag(0)
                    .environmentObject(viewModel)
                MyPantryView()
                    .tabItem {
                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                        Text("My Pantry")
                    }.tag(1)
                    .environmentObject(viewModel)

                RecipeListView()
                    .tabItem {
                        Image(systemName: "fork.knife")
                        Text("Recipes")
                    }.tag(2)
                    .environmentObject(viewModel)

                AddRecipeView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Add Recipe")
                    }.tag(3)
                    .environmentObject(viewModel)
            }
            .accentColor(.black) // The color of selected tab items.
        }
    }
}




struct BottomBackgroundView: View {
    var body: some View {
        Color(.systemGray2)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.4)
    }
}


struct BottomButtonView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    var btnName: String = "Button"
    var imgName: String = "plus.viewfinder"
    var activeView: RecipeViewModel.ActiveView

    @State private var isActive = false
    
    var body: some View {
        VStack {
            Image(systemName: imgName)
                .resizable()
                .scaledToFit()
                .frame(height: 40)
                .foregroundColor(.black)
            Text(btnName)
                .font(.callout)
                .foregroundColor(.black)
                .minimumScaleFactor(0.75)
        }
        .onTapGesture {
            if viewModel.activeView != activeView {
                isActive = true
            }
        }
        .navigationDestination(isPresented: $isActive) {
            switch activeView {
            case .home:
                ContentView()
            case .myPantry:
                MyPantryView().environmentObject(viewModel)
            case .recipes:
                RecipesView()
            case .addRecipe:
                AddRecipeView()
            case .detailedView:
                DetailedRecipeView(recipe: Recipe(name: "Debug", ingredients: [Ingredient(name: "Debug", quantity: 1, unit: "Debug")], difficulty: "Debug"))
            }
        }
    }
}



struct HomeBottomNav_Previews: PreviewProvider {
    static var previews: some View {
        HomeBottomNav().environmentObject(RecipeViewModel())
    }
}
