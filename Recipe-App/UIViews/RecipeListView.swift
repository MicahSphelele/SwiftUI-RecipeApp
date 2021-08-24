//
//  RecipeListView.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI
import Resolver

struct RecipeListView: View {
    
    @State var selectedCategory: String = ""
    
    @Injected
    @StateObject var recipeListViewModel: RecipeListViewModel

    var body: some View {
        
        //Get the screen size so that I can calculate the right width for the search field
       
        GeometryReader { geometryReader in
            NavigationView {
                VStack(spacing: nil) {
                   
                    SearchAppBar(selectedCategory: $selectedCategory, geometryProxy: geometryReader)
                    
                    ChipsListView(selectedCategory: $selectedCategory)
                        .padding(.leading)
                        .padding(.trailing)
                    
                    Spacer()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(RecipeMock.dummyRecipeList, id: \.pk) { recipe in
                            RecipeCardItemView(recipe: recipe, geometryProxy: geometryReader )
                        }
                    }.navigationBarHidden(true)
                }
            }
        }
    }
}

#if DEBUG
struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello World")
        //RecipeListView(, recipeListViewModel: <#RecipeListViewModel#>)
    }
}
#endif
