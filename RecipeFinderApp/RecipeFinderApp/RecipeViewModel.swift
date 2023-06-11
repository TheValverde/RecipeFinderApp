//
//  RecipeViewModel.swift
//  RecipeFinderApp
//
//  Created by Hugo Valverde on 6/8/23.
//

import SwiftUI
import Combine

class RecipeViewModel: ObservableObject {
    @Published var userIngredients: [Ingredient] = []
    @Published var activeView: ActiveView = .home
    @Published var recipes: [Recipe] = [
        Recipe(name: "Pasta", ingredients:
                [Ingredient(name: "Pasta", quantity: 2, unit: "Cups"),
                Ingredient(name: "Tomato", quantity: 1, unit: "Whole"),
                Ingredient(name: "Garlic", quantity: 2, unit: "Cloves")],
               difficulty: "Easy"),
        Recipe(name: "Pizza", ingredients:
                [Ingredient(name: "Flour", quantity: 2, unit: "Cups"),
                Ingredient(name: "Yeast", quantity: 1, unit: "Packet"),
                Ingredient(name: "Tomato", quantity: 1, unit: "Whole"),
                Ingredient(name: "Cheese", quantity: 1, unit: "Cup")],
               difficulty: "Medium"),
        Recipe(name: "Grilled Cheese", ingredients:
                [Ingredient(name: "Bread", quantity: 2, unit: "Slices"),
                 Ingredient(name: "Cheese", quantity: 1, unit: "Slices")],
               difficulty: "Easy"),
        Recipe(name: "Porkchops", ingredients:
                [Ingredient(name: "Porkchop", quantity: 2, unit: "Chops"),
                 Ingredient(name: "Olive Oil", quantity: 1, unit: "Cups"),
                 Ingredient(name: "Black Ground Pepper", quantity: 2, unit: "Teaspoons"),
                 Ingredient(name: "MSG", quantity: 1, unit: "Dash"),
                 Ingredient(name: "Salt", quantity: 1, unit: "Teaspoons")],
               difficulty: "Easy"),
        Recipe(name: "Debug but I want to make the name really long", ingredients:
                [Ingredient(name: "Debug", quantity: 1, unit: "Debug", calories: 90)],
               difficulty: "Debug", steps:[    "Preheat the oven to 350°F (175°C).",
                                               "Grease a baking dish with butter.",
                                               "In a large mixing bowl, combine the flour, sugar, and salt.",
                                               "Add the eggs, milk, and vanilla extract to the bowl and mix well.",
                                               "Fold in the chocolate chips.",
                                               "Pour the batter into the greased baking dish.",
                                               "Bake in the preheated oven for 25-30 minutes or until golden brown.",
                                               "Remove from the oven and let it cool for a few minutes.",
                                               "Serve and enjoy!"]),
        Recipe(name: "Chocolate Chip Cookies",
               ingredients: [
                   Ingredient(name: "Flour", quantity: 2, unit: "cups", calories: 455),
                   Ingredient(name: "Sugar", quantity: 1, unit: "cup", calories: 774),
                   Ingredient(name: "Salt", quantity: 1, unit: "teaspoon", calories: 0),
                   Ingredient(name: "Eggs", quantity: 2, unit: "large", calories: 143),
                   Ingredient(name: "Milk", quantity: 1, unit: "tablespoon", calories: 8),
                   Ingredient(name: "Vanilla Extract", quantity: 1, unit: "teaspoon", calories: 12),
                   Ingredient(name: "Chocolate Chips", quantity: 1.5, unit: "cups", calories: 805)
               ],
               difficulty: "Intermediate",
               steps: [
                   "Preheat the oven to 350°F (175°C).",
                   "Grease a baking sheet with butter or line it with parchment paper.",
                   "In a large mixing bowl, combine the flour, sugar, and salt.",
                   "Add the eggs, milk, and vanilla extract to the bowl and mix well.",
                   "Fold in the chocolate chips.",
                   "Scoop rounded tablespoons of dough onto the prepared baking sheet.",
                   "Bake in the preheated oven for 10-12 minutes or until the edges are golden brown.",
                   "Remove from the oven and let the cookies cool on the baking sheet for a few minutes.",
                   "Transfer the cookies to a wire rack to cool completely.",
                   "Serve and enjoy!"
               ]),
        Recipe(name: "Spaghetti Bolognese",
               ingredients: [
                   Ingredient(name: "Spaghetti", quantity: 8, unit: "ounces", calories: 200),
                   Ingredient(name: "Ground Beef", quantity: 1, unit: "pound", calories: 780),
                   Ingredient(name: "Onion", quantity: 1, unit: "medium", calories: 44),
                   Ingredient(name: "Garlic", quantity: 2, unit: "cloves", calories: 8),
                   Ingredient(name: "Tomato Sauce", quantity: 2, unit: "cups", calories: 240),
                   Ingredient(name: "Red Wine", quantity: 1, unit: "cup", calories: 240),
                   Ingredient(name: "Dried Oregano", quantity: 1, unit: "teaspoon", calories: 5),
                   Ingredient(name: "Salt", quantity: 1, unit: "teaspoon", calories: 0),
                   Ingredient(name: "Black Pepper", quantity: 1, unit: "teaspoon", calories: 6),
                   Ingredient(name: "Parmesan Cheese", quantity: 1, unit: "cup", calories: 431)
               ],
               difficulty: "Intermediate",
               steps: [
                   "Cook the spaghetti according to the package instructions.",
                   "In a large skillet, brown the ground beef over medium heat.",
                   "Add the chopped onion and minced garlic to the skillet and cook until softened.",
                   "Stir in the tomato sauce, red wine, dried oregano, salt, and black pepper.",
                   "Simmer the sauce for about 20 minutes, stirring occasionally.",
                   "Serve the spaghetti with the Bolognese sauce on top.",
                   "Sprinkle with grated Parmesan cheese.",
                   "Enjoy!"
               ]),
        Recipe(name: "Chicken Stir-Fry",
               ingredients: [
                   Ingredient(name: "Chicken Breast", quantity: 2, unit: "pieces", calories: 280),
                   Ingredient(name: "Bell Peppers", quantity: 2, unit: "medium", calories: 50),
                   Ingredient(name: "Broccoli Florets", quantity: 2, unit: "cups", calories: 55),
                   Ingredient(name: "Carrots", quantity: 2, unit: "medium", calories: 50),
                   Ingredient(name: "Soy Sauce", quantity: 3, unit: "tablespoons", calories: 36),
                   Ingredient(name: "Garlic", quantity: 3, unit: "cloves", calories: 12),
                   Ingredient(name: "Ginger", quantity: 1, unit: "tablespoon", calories: 9),
                   Ingredient(name: "Sesame Oil", quantity: 2, unit: "tablespoons", calories: 240),
                   Ingredient(name: "Cooked Rice", quantity: 2, unit: "cups", calories: 440)
               ],
               difficulty: "Easy",
               steps: [
                   "Slice the chicken breast into thin strips.",
                   "In a large pan or wok, heat the sesame oil over medium-high heat.",
                   "Add the sliced chicken and cook until browned and cooked through.",
                   "Add the minced garlic and grated ginger to the pan and cook for an additional minute.",
                   "Add the sliced bell peppers, broccoli florets, and julienned carrots to the pan.",
                   "Stir-fry the vegetables until they are tender-crisp.",
                   "Pour in the soy sauce and stir to coat the chicken and vegetables.",
                   "Cook for another minute to allow the flavors to meld.",
                   "Serve the chicken stir-fry over cooked rice.",
                   "Enjoy!"
               ]),
        Recipe(name: "Caprese Salad",
               ingredients: [
                   Ingredient(name: "Tomatoes", quantity: 4, unit: "medium", calories: 100),
                   Ingredient(name: "Fresh Mozzarella", quantity: 8, unit: "ounces", calories: 800),
                   Ingredient(name: "Fresh Basil Leaves", quantity: 1/2, unit: "cup", calories: 2),
                   Ingredient(name: "Extra Virgin Olive Oil", quantity: 2, unit: "tablespoons", calories: 239),
                   Ingredient(name: "Balsamic Vinegar", quantity: 2, unit: "tablespoons", calories: 22),
                   Ingredient(name: "Salt", quantity: 1/2, unit: "teaspoon", calories: 0),
                   Ingredient(name: "Black Pepper", quantity: 1/4, unit: "teaspoon", calories: 1)
               ],
               difficulty: "Easy",
               steps: [
                   "Slice the tomatoes and fresh mozzarella into 1/4-inch thick slices.",
                   "Arrange the tomato and mozzarella slices alternately on a serving platter.",
                   "Tuck fresh basil leaves in between the tomato and mozzarella slices.",
                   "Drizzle extra virgin olive oil and balsamic vinegar over the salad.",
                   "Season with salt and black pepper.",
                   "Allow the flavors to meld for a few minutes before serving.",
                   "Enjoy the refreshing Caprese salad!"
               ]),
        Recipe(name: "Chicken Parmesan",
               ingredients: [
                   Ingredient(name: "Chicken Breasts", quantity: 4, unit: "pieces", calories: 400),
                   Ingredient(name: "Eggs", quantity: 2, unit: "large", calories: 143),
                   Ingredient(name: "Breadcrumbs", quantity: 1.5, unit: "cups", calories: 384),
                   Ingredient(name: "Parmesan Cheese", quantity: 1, unit: "cup", calories: 431),
                   Ingredient(name: "Marinara Sauce", quantity: 2, unit: "cups", calories: 200),
                   Ingredient(name: "Mozzarella Cheese", quantity: 1, unit: "cup", calories: 318),
                   Ingredient(name: "Olive Oil", quantity: 2, unit: "tablespoons", calories: 239),
                   Ingredient(name: "Salt", quantity: 1, unit: "teaspoon", calories: 0),
                   Ingredient(name: "Black Pepper", quantity: 1/2, unit: "teaspoon", calories: 3),
                   Ingredient(name: "Fresh Basil", quantity: 1/4, unit: "cup", calories: 1)
               ],
               difficulty: "Intermediate",
               steps: [
                   "Preheat the oven to 375°F (190°C).",
                   "Pound the chicken breasts to an even thickness.",
                   "In a shallow dish, whisk the eggs with salt and black pepper.",
                   "In another dish, combine the breadcrumbs, grated Parmesan cheese, and dried basil.",
                   "Dip each chicken breast into the egg mixture, then coat it with the breadcrumb mixture.",
                   "In a large skillet, heat the olive oil over medium heat.",
                   "Cook the breaded chicken breasts until golden brown on both sides.",
                   "Transfer the chicken breasts to a baking dish.",
                   "Top each chicken breast with marinara sauce, shredded mozzarella cheese, and fresh basil.",
                   "Bake in the preheated oven for about 20 minutes or until the cheese is melted and bubbly.",
                   "Serve the chicken Parmesan with pasta or a side salad.",
                   "Enjoy!"
               ]),
        Recipe(name: "Vegetable Stir-Fry",
               ingredients: [
                   Ingredient(name: "Broccoli Florets", quantity: 2, unit: "cups", calories: 55),
                   Ingredient(name: "Carrots", quantity: 2, unit: "medium", calories: 50),
                   Ingredient(name: "Bell Peppers", quantity: 2, unit: "medium", calories: 50),
                   Ingredient(name: "Snow Peas", quantity: 1, unit: "cup", calories: 41),
                   Ingredient(name: "Mushrooms", quantity: 8, unit: "ounces", calories: 40),
                   Ingredient(name: "Garlic", quantity: 3, unit: "cloves", calories: 12),
                   Ingredient(name: "Ginger", quantity: 1, unit: "tablespoon", calories: 9),
                   Ingredient(name: "Soy Sauce", quantity: 3, unit: "tablespoons", calories: 36),
                   Ingredient(name: "Sesame Oil", quantity: 2, unit: "tablespoons", calories: 240),
                   Ingredient(name: "Rice", quantity: 2, unit: "cups", calories: 440)
               ],
               difficulty: "Easy",
               steps: [
                   "In a wok or large skillet, heat the sesame oil over high heat.",
                   "Add the minced garlic and grated ginger to the pan and cook for 1 minute.",
                   "Add the sliced bell peppers, broccoli florets, julienned carrots, snow peas, and sliced mushrooms.",
                   "Stir-fry the vegetables for about 4-5 minutes until they are tender-crisp.",
                   "Drizzle the soy sauce over the vegetables and toss to coat evenly.",
                   "Serve the vegetable stir-fry over cooked rice.",
                   "Enjoy!"
               ]),

        Recipe(name: "Greek Salad",
               ingredients: [
                   Ingredient(name: "Cucumbers", quantity: 2, unit: "medium", calories: 60),
                   Ingredient(name: "Tomatoes", quantity: 4, unit: "medium", calories: 100),
                   Ingredient(name: "Red Onion", quantity: 1/2, unit: "small", calories: 20),
                   Ingredient(name: "Kalamata Olives", quantity: 1/2, unit: "cup", calories: 125),
                   Ingredient(name: "Feta Cheese", quantity: 1/2, unit: "cup", calories: 200),
                   Ingredient(name: "Extra Virgin Olive Oil", quantity: 2, unit: "tablespoons", calories: 239),
                   Ingredient(name: "Lemon Juice", quantity: 2, unit: "tablespoons", calories: 8),
                   Ingredient(name: "Dried Oregano", quantity: 1/2, unit: "teaspoon", calories: 2),
                   Ingredient(name: "Salt", quantity: 1/2, unit: "teaspoon", calories: 0),
                   Ingredient(name: "Black Pepper", quantity: 1/4, unit: "teaspoon", calories: 1)
               ],
               difficulty: "Easy",
               steps: [
                   "Slice the cucumbers and tomatoes into bite-sized pieces.",
                   "Thinly slice the red onion.",
                   "In a large bowl, combine the cucumbers, tomatoes, red onion, and Kalamata olives.",
                   "Crumble the feta cheese over the salad.",
                   "Drizzle extra virgin olive oil and lemon juice over the salad.",
                   "Sprinkle dried oregano, salt, and black pepper.",
                   "Toss the salad gently to combine all the ingredients.",
                   "Let the Greek salad sit for a few minutes to allow the flavors to meld.",
                   "Serve and enjoy!"
               ])

    ]
    
    enum ActiveView { case home, myPantry, recipes, addRecipe, detailedView }

    func addRecipe(_ recipe: Recipe) {
        self.recipes.append(recipe)
    }
    
    func addOrUpdateIngredient(_ ingredient: Ingredient) {
            print("Shit")
            if let index = userIngredients.firstIndex(where: { $0.name == ingredient.name && $0.unit == ingredient.unit }) {
                // The ingredient already exists in the list, so add the quantities.
                userIngredients[index].quantity += ingredient.quantity
            } else {
                // The ingredient does not exist in the list, so append it.
                userIngredients.append(ingredient)
            }
        }
    
    func removeIngredient(_ ingredient: Ingredient) {
            if let index = userIngredients.firstIndex(where: { $0.name == ingredient.name && $0.unit == ingredient.unit }) {
                userIngredients.remove(at: index)
            }
        }
    
}
