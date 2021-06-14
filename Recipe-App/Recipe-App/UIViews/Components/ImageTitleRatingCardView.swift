//
//  ImageTitleRatingCardView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/14.
//

import SwiftUI

struct ImageTitleRatingCardView: View {
    var body: some View {
        VStack(spacing:0) {
            Image("sweets")
                .resizable()
                .scaledToFit()
            HStack{
                Text("Sometext")
                    .bold()
                    .padding()
                Spacer()
                Text("4")
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
        ImageTitleRatingCardView()
    }
}
