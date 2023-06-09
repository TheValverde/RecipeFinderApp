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
                        .font(.title)
                        .fontWeight(.bold)
                    
                    //            .frame(width: 999, height: 50)
                    //            .background(Color(.systemRed))
                        .padding(.bottom, 10)
                    IngredientInputView().environmentObject(viewModel)
                    RecipeListView().environmentObject(viewModel)
                    HomeBottomNav()
                    
                }.padding(.top, 20)
            }
        }
    }
}

struct BackgroundView : View{
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.blue, Color.pink, Color.yellow]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
