//
//  RecipeListView.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var selectedCategory: String = ""

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
                        ForEach(RecipeMock.dummyRecipeList, id: \.id) { recipe in
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
        RecipeListView()
    }
}
#endif
