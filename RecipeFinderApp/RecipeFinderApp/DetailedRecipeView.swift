import SwiftUI

struct DetailedRecipeView: View {
    @Environment(\.presentationMode) var presentationMode
    var recipe : Recipe

    var body: some View {
        ZStack{
            BackgroundView()
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text(recipe.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                    }
                    Text("Difficulty: \(recipe.difficulty)")
                        .font(.title2)
                    Text("Total Calories: \(recipe.calories)")
                        .font(.title2)
                    Text("Ingredients")
                        .font(.title)
                        .padding(.top)

                    ForEach(recipe.ingredients) { ingredient in
                        HStack {
                            Text(ingredient.name)
                                .font(.headline)
                            Spacer()
                            Text("\(ingredient.quantity, specifier: "%.2f") \(ingredient.unit)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                    }
                    
                    if let steps = recipe.steps {
                        Text("Steps")
                            .font(.title)
                            .padding(.top)

                        ForEach(steps.indices, id: \.self) { index in
                            Text("Step \(index + 1): \(steps[index])")
                                .padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                
            }
        }
    }
}

struct DetailedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedRecipeView(recipe: Recipe(name: "LOL NERD", ingredients: [Ingredient(name: "Cheese", quantity: 1, unit: "Slice")], difficulty: "Easy", steps: ["Step 1", "Step 2", "Step 3"]))
    }
}
