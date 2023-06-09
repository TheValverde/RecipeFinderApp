import SwiftUI

struct MyPantryView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack {
                Label("My Pantry", systemImage: "takeoutbag.and.cup.and.straw.fill")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(viewModel.userIngredients) { ingredient in
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
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct MyPantryView_Previews: PreviewProvider {
    static var previews: some View {
        MyPantryView().environmentObject(RecipeViewModel())
    }
}
