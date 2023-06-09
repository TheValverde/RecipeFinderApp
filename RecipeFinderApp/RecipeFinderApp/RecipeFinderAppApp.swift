//
//  RecipeFinderAppApp.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI

@main
struct RecipeFinderAppApp: App {
    @StateObject private var viewModel = RecipeViewModel()  // Creates a single source of truth

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
