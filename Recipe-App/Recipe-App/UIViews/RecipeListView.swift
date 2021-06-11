//
//  RecipeListView.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        
        //Get the screen size so that I can calculate the right width for the search field 
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    
                }.toolbar(content: {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        TextField("Search", text: $searchText)
                            .padding(7)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .frame(width: geometry.size.width / 1.3, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                           print("This is where the button action happens")
                        } label: {
                            Label("Mode", systemImage: "moon.fill")
                                .labelStyle(IconOnlyLabelStyle())
                        }
                    }
                    
                })
            }
        }

    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
