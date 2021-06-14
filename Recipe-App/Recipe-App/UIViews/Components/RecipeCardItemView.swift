//
//  ImageTitleRatingCardView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/14.
//

import SwiftUI

struct RecipeCardItemView: View {
    @Binding var imageRecipeName: String
    @Binding var recipeName: String
    @Binding var rating: Int
    
    var body: some View {
        VStack(spacing:0) {
            Image(imageRecipeName)
                .resizable()
                .scaledToFit()
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

struct ImageTitleRatingCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardItemView(imageRecipeName: .constant("sweets"),
                           recipeName: .constant("Recipe Name"),
                           rating: .constant(10))
    }
}
