//
//  ImageTitleRatingCardView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/14.
//

import SwiftUI
import SDWebImageSwiftUI

struct RecipeCardItemView: View {
   
    var recipe: Recipe
    var geometryProxy: GeometryProxy
    
    var body: some View {
        VStack(spacing: 10) {
            
            NavigationLink(
                destination:
                    //This is where we will place the recipe details view when an item is clicked
                    Text("Viewing \(self.recipe.title!) details")
                
                ,label: {
                    WebImage(url: AppConstants.getImageWithUrl(url: self.recipe.featuredImage ?? ""))
                        .resizable()
                        .placeholder(Image(systemName: "photo"))
                        .aspectRatio(contentMode: .fill)
                        .frame(width: self.geometryProxy.size.width - 24, height: 250)
                        .cornerRadius(8)
                })
            
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
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
        }
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 3, y: 3)
    }
}

#if DEBUG
struct ImageTitleRatingCardView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometryReader in
            RecipeCardItemView(recipe: Recipe(id: 1, title: "Chicken soup with mayo", publisher: nil, featuredImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReU_iHN3DdMKVhOgtJgQW6qmYxPCFZNoenWw&usqp=CAU", rating: 80, sourceUrl: nil, description: nil, cookingInstructions: nil, ingredients: nil, dateAdded: nil, dateUpdated: nil), geometryProxy: geometryReader)
        }
    }
}
#endif
