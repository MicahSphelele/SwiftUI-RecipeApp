//
//  RecipeListView.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var selectedCategory: String = ""
    
    //Placeholder Data
    @State var placeholderData = ["Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","PlaceholderI","Placeholder","Placeholder","PlaceholderI","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder","Placeholder"]
    
    var body: some View {
        
        //Get the screen size so that I can calculate the right width for the search field
        GeometryReader { geometry in
            NavigationView {
                VStack(spacing: nil) {
                    //This can be moved to a different component called AppToolBar
                    HStack {
                        TextField("Search", text: $selectedCategory)
                                      .padding(5)
                                      .background(Color(.systemGray6))
                                      .cornerRadius(8)
                            .frame(width: geometry.size.width / 1.3, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        Button {
                          print("Action")
                        } label: {
                          Label("Mode", systemImage: "moon.fill")
                            .labelStyle(IconOnlyLabelStyle())
                        }
                    }
                    //# This can be moved to a different component AppToolBar
                    
                    ChipsListView(selectedCategory: $selectedCategory)
                        .padding(.leading)
                        .padding(.trailing)
                    
                    Spacer()
                    //This is where the list data will go
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(placeholderData, id: \.self) { text in
                            Text(text)
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
