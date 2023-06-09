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
        ZStack {
            
            VStack {
                Text("Recipe Finder")
                    .font(.title)
                    .fontWeight(.bold)
        //            .frame(width: 999, height: 50)
        //            .background(Color(.systemRed))
                    .padding(.bottom, 10)
                IngredientInputView().environmentObject(viewModel)
                RecipeListView().environmentObject(viewModel)
            }.padding(.top, 20)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
