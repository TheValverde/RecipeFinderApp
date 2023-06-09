//
//  RecipeFinderAppApp.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

@main
struct RecipeFinderApp: App {
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(RecipeViewModel())
        }
    }
}
