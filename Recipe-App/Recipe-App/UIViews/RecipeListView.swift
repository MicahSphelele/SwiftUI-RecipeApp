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
                    VStack(spacing: nil) {
                      
                        HStack{
                            TextField("Search", text: $searchText)
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
                        ChipsListView()
                        Spacer()
                        
                    }.padding()
                }
                    
                }
            }
            
        }
    }

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
