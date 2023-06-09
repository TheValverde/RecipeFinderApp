//
//  MyPantryView.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/9/23.
//

import SwiftUI

struct MyPantryView: View {
    @EnvironmentObject var viewModel: RecipeViewModel

    var body: some View {
        VStack {
            Text("My Pantry")
                .font(.title)
                .padding()
            
            List(viewModel.userIngredients) { ingredient in
                HStack {
                    Text(ingredient.name)
                    Spacer()
                    Text("\(ingredient.quantity, specifier: "%.2f") \(ingredient.unit)")
                }
            }
        }
    }
}



struct MyPantryView_Previews: PreviewProvider {
    static var previews: some View {
        MyPantryView()
            .environmentObject(RecipeViewModel())
    }
}

