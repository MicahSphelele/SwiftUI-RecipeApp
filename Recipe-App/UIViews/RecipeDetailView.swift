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
    var geometryProxy: GeometryProxy
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content : {
            
            VStack {
                WebImage(url: AppConstants.getImageWithUrl(url: self.recipe.featuredImage ?? ""))
                    .resizable()
                    .placeholder(Image("empty_plate"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: self.geometryProxy.size.width - 24, height: 350,alignment: .center)
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
                
                if recipe.publisher != nil {
                    
                    let dateUpated: String =  recipe.dateAdded ?? "April 05 2020"
                    
                    Text(AppConstants.getPublishedText(dateUpdated: dateUpated, publisher: recipe.publisher ?? "Unknown"))
                        .font(.system(size: 12))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 2)
                        .padding(.leading, 5)
                }
               
            }
        
        })
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 3, y: 3)
        .navigationTitle("Recipe Details")
    }
    
}

#if DEBUG
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometryReader in
            RecipeDetailView(recipe: .constant(Recipe(pk: 3, title: "Chicken pasta soup", publisher: "Kiba", featuredImage: "https://www.eatwell101.com/wp-content/uploads/2020/02/chicken-soup-recipe-3.jpg", rating: 70, sourceUrl: nil, description: nil, cookingInstructions: nil, ingredients: ["2 tablespoons kosher salt","5 cups low sodium chicken broth","4 carrots, cut into bite-sizes pieces","11/2 cups shredded rotsserie chicken", "8 ounces cheese tortellini (fresh or frozen)"], dateAdded: "April 05 2021", dateUpdated: "January 06 2021")), geometryProxy: geometryReader)
        }
    }
}
#endif
