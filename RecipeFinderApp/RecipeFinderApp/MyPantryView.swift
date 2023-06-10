import SwiftUI
import UIKit

struct MyPantryView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                Label("My Pantry", systemImage: "takeoutbag.and.cup.and.straw.fill")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                
                List {
                    ForEach(viewModel.userIngredients.indices, id: \.self) { index in
                        HStack {
                            Text(viewModel.userIngredients[index].name)
                                .font(.headline)
                            
                            Spacer()
                            
                            Text("\(viewModel.userIngredients[index].quantity, specifier: "%.2f") \(viewModel.userIngredients[index].unit)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                
                        }
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                        .listRowBackground(Color.clear)
                    }
                    .onDelete(perform: deleteIngredient)
                    
                }
                .listStyle(PlainListStyle())  // to remove list separator lines
                .padding(.horizontal)
                .scrollContentBackground(.hidden)
                
            }
        }
        .onAppear {
            viewModel.activeView = .myPantry
        }
    }
    
    func deleteIngredient(at offsets: IndexSet) {
        viewModel.userIngredients.remove(atOffsets: offsets)
    }
}

struct MyPantryView_Previews: PreviewProvider {
    static var previews: some View {
        MyPantryView().environmentObject(RecipeViewModel())
    }
}
