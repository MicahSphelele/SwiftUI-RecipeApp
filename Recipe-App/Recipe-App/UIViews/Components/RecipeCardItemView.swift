//
//  ImageTitleRatingCardView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/14.
//

import SwiftUI
import SDWebImageSwiftUI

struct RecipeCardItemView: View {
    let imageUrlString: String
    let recipeName: String
    let rating: Int

    var body: some View {
        VStack(spacing:0) {
        
            WebImage(url: URL(string: imageUrlString) )
                .resizable()
                .placeholder(Image(systemName: "photo"))
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8)
            HStack{
                Text(recipeName)
                    .bold()
                    .padding()
                Spacer()
                Text("\(rating)")
                    .frame(width: 60, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .cornerRadius(15.0)
                    .padding()
            }.frame(height: 50, alignment: .leading)
            .background(Color.secondary)
            .foregroundColor(.white)
        }
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#if DEBUG
struct ImageTitleRatingCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardItemView(imageUrlString: "sweets",
                           recipeName: "Recipe Name",
                           rating: 10)
    }
}
#endif
