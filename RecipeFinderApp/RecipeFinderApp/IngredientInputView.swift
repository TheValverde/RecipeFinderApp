import SwiftUI

struct IngredientInputView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var ingredientName = ""
    @State private var ingredientQuantity: String = ""
    @State private var ingredientUnit = ""

    var body: some View {
        HStack {
            TextField("Ingredient", text: $ingredientName)
                .padding()
                .background(Color(.systemGray4))
                .cornerRadius(8.0)
                .padding(.horizontal, 3)
            
            TextField("####", text: $ingredientQuantity)
                .frame(width: 50)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color(.systemGray4))
                .cornerRadius(8.0)
                .padding(.horizontal, 3)
            
            TextField("Unit", text: $ingredientUnit)
                .padding()
                .background(Color(.systemGray4))
                .cornerRadius(8.0)
                .padding(.horizontal, 3)
            
            Button(action: {
                if let quantity = Double(ingredientQuantity) {
                    let ingredient = Ingredient(name: ingredientName, quantity: quantity, unit: ingredientUnit)
                    viewModel.userIngredients.append(ingredient)
                    ingredientName = ""
                    ingredientQuantity = ""
                    ingredientUnit = ""
                    print(viewModel.userIngredients)  // This will print the userIngredients array to the console
                }
            }) {
                Text("Add")
                    .foregroundColor(.primary)
                    .frame(width: 50, height: 55)
                    .background(Color(.systemMint))
                    .cornerRadius(10)
            }
        }.padding(.horizontal, 15)
    }
}

struct IngredientInputView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientInputView().environmentObject(RecipeViewModel())
    }
}
