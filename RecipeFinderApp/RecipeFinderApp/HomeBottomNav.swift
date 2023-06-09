//
//  HomeBottomNav.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct HomeBottomNav: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                BottomBackgroundView()
                HStack(spacing: 20){
                    BottomButtonView(btnName: "My Pantry", imgName: "takeoutbag.and.cup.and.straw.fill", destination: AnyView(RecipesView()))
                    BottomButtonView(btnName: "Recipes", imgName: "fork.knife", destination: AnyView(RecipesView()))
                    BottomButtonView(btnName: "Add Recipe", imgName: "plus", destination: AnyView(AddRecipeView()))
                }
            }
        }.frame(height: 110)
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
    var btnName: String = "Button"
    var imgName: String = "plus.viewfinder"
    var destination: AnyView
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(systemName: imgName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .foregroundColor(.black)
                Text(btnName)
                    .font(.callout)
                    .foregroundColor(.black)
            }
        }
    }
}

struct HomeBottomNav_Previews: PreviewProvider {
    static var previews: some View {
        HomeBottomNav()
    }
}
