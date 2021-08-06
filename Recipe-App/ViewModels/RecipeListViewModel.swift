//
//  RecipeListViewModel.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI
import Combine

class RecipeListViewModel : ObservableObject {
    
    @Published var recipes : [Recipe]? = nil
    
    func getReciepeList(){
        
    }
    
}
