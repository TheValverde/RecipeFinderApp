//
//  ContentView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    let viewModel = RecipeViewModel()

    var body: some View {
        VStack {
            IngredientInputView().environmentObject(viewModel)
            RecipeListView().environmentObject(viewModel)
        }.padding(.top, 20)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
