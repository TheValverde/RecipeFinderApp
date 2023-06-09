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
        NavigationView{
            ZStack {
                BackgroundView()
                VStack {
                    Text("Recipe Finder")
                        .fontWeight(.bold)
                        .font(.system(size:50))
                        .padding(.bottom, 10)

                    IngredientInputView().environmentObject(viewModel)
                    Divider()

                    HomeBottomNav().environmentObject(viewModel)
                }.padding(.top, 20)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
