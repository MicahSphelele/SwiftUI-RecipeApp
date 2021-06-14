//
//  FoodCategoryChip.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/12.
//

import SwiftUI

struct FoodCategoryChip: View {
    
    let title: String  //pass system image
    @Binding var selectedCategory: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.caption)
                .lineLimit(1)
                .fixedSize()
        }.padding(.all, 6)
        .foregroundColor(.white)
        .background(self.selectedCategory == title ? Color.gray : Color.blue)
        .cornerRadius(40)
        .onTapGesture {
            self.selectedCategory = title
        }
    }
}

#if DEBUG

struct FoodCategoryChip_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryChip(title: "Chicken", selectedCategory: .constant("Chicken"))
    }
}

#endif
