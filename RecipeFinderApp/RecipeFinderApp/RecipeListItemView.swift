import SwiftUI

struct RecipeListItemView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    
    var name : String
    var difficulty : String
    var destination: AnyView
    
    @State private var showingDetailedView = false
    
    var body: some View {
        VStack {
            Button(action: {
                showingDetailedView = true
            }) {
                HStack(spacing: 5) {
                    Text(name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .lineLimit(1)
                        .padding(.leading, 20)
                        .frame(width: 250, alignment: .leading)
                    Spacer()
                    Text(difficulty)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.trailing, 20)
                        .minimumScaleFactor(0.75)
                        .lineLimit(1)
                }
                .frame(width: 360, height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(18)
            }
            .sheet(isPresented: $showingDetailedView) {
                destination
            }
        }
    }
    
    struct RecipeListItemView_Previews: PreviewProvider {
        static var previews: some View {
            ZStack{
                BackgroundView()
                RecipeListItemView(
                    name: "TTest asdf asdfj adfj hasdfj ahsdjf ahds faj",
                    difficulty: "Easy",
                    destination: AnyView(DetailedRecipeView(recipe: Recipe(
                        name: "Test",
                        ingredients: [Ingredient(name: "Bread", quantity: 1, unit: "Slice")],
                        difficulty: "Easy"))
                        .environmentObject(RecipeViewModel())))
            }
        }
    }
}
