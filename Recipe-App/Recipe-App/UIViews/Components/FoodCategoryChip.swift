//
//  FoodCategoryChip.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/12.
//

import SwiftUI

struct FoodCategoryChip: View {
    
    let title: String  //pass system image
    @State var isSelected: Bool
    
    var body: some View {
        HStack {
            Text(title)
                .font(.caption)
                .lineLimit(1)
                .fixedSize()
        }.padding(.all, 6)
        .foregroundColor(isSelected ? .white : .blue)
        .background(isSelected ? Color.blue : Color.white)
        .cornerRadius(40)
        .onTapGesture {
            isSelected.toggle() // toggle select - not selected
        }
    }
}

struct FoodCategoryChip_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryChip(title: "Chicken", isSelected: true)
    }
}
