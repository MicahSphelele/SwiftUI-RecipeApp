//
//  RecipeDetailView.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/07/02.
//

import SwiftUI
import SDWebImageSwiftUI

struct RecipeDetailView: View {
    
    @Binding var recipe: Recipe
    
    var body: some View {
        ScrollView(.vertical, showsIndicators:false, content : {
            
            VStack {
                WebImage(url: AppConstants.getImageWithUrl(url: self.recipe.featuredImage ?? ""))
                    .resizable()
                    .placeholder(Image("empty_plate"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 315, height: 350,alignment: .center)
                    .cornerRadius(8)
                    .transition(.fade(duration: 0.5))
                
                HStack(alignment: .center, content: {
                    Text(self.recipe.title ?? "")
                        .font(.system(size: 18))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(alignment: .trailing)
                    
                    Text(String(self.recipe.rating ?? 0))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: 50, height: 20, alignment: .center)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        
                })
            }
        
        })
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 3, y: 3)
    }
    
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: .constant(Recipe(id: 1, title: "Chicken soup with mayo", publisher: nil, featuredImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReU_iHN3DdMKVhOgtJgQW6qmYxPCFZNoenWw&usqp=CAU", rating: 80, sourceUrl: nil, description: nil, cookingInstructions: nil, ingredients: nil, dateAdded: nil, dateUpdated: nil)))
    }
}
