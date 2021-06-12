//
//  ChipsView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/12.
//

import SwiftUI

struct ChipsListView: View {
    
    //@Binding var searchText: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(getAllFoodCategories(), id: \.self) { category in
                    
                    FoodCategoryChip(title: category.rawValue,isSelected: true)
                
                }
            }
        }
    }
}

struct ChipsView_Previews: PreviewProvider {
    static var previews: some View {
        ChipsListView()
    }
}
