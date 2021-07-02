//
//  SearchAppBar.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/19.
//

import SwiftUI
import Combine

struct SearchAppBar: View {
    
    @Binding var selectedCategory: String
    var geometryProxy: GeometryProxy
    
    var body: some View {
        HStack {
            TextField("Search Recipe",
                      text: $selectedCategory, onCommit: {
                        print("Now Start Search : \(selectedCategory)")
                      })
                .keyboardType(.webSearch)
                          .padding(5)
                          .background(Color(.white))
                .frame(width: geometryProxy.size.width / 1.3, height: 100, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        
            Button {
              print("Action")
            } label: {
              Label("Mode", systemImage: "moon.fill")
                .labelStyle(IconOnlyLabelStyle())
            }
        }
    }
}

#if DEBUG
struct SearchAppBar_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometryReader in
            SearchAppBar(selectedCategory: .constant("Chicken"), geometryProxy: geometryReader)
        }
    }
}
#endif
