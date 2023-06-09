//
//  MainView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)

            MyPantryView()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("My Pantry")
                }.tag(1)

            RecipeListView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Recipes")
                }.tag(2)

            AddRecipeView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Add Recipe")
                }.tag(3)
        }
        .accentColor(.black) // The color of selected tab items.
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
