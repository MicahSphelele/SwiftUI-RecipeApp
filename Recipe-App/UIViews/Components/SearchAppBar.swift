//
//  SearchAppBar.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/19.
//

import SwiftUI

struct SearchAppBar: View {
    
    @Binding var selectedCategory: String
    var geometryProxy: GeometryProxy
    
    var body: some View {
        HStack {
            TextField("Search", text: $selectedCategory)
                          .padding(5)
                          .background(Color(.systemGray6))
                          .cornerRadius(8)
                .frame(width: geometryProxy.size.width / 1.3, height: 100, alignment: .center)
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
