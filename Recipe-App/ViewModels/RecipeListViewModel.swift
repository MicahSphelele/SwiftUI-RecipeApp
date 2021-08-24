//
//  RecipeListViewModel.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/06/11.
//

import SwiftUI
import Combine
import Resolver

class RecipeListViewModel : ObservableObject {
    
    @Published var recipes : [Recipe]? = nil
    
    @Published var state = RecipeListViewModelState.idle
    
    init() {
        print("init")
        getReciepeList()
    }
    
    func getReciepeList() {
        
        @Injected var repository : IRecipeRepository
        
        print("getReciepeList")
        repository.getRecipeList(page: 1, query: "Chicken", completionState: { results in
            print("completionState:\(results)")
            switch results {
                case .finished: self.state = .loaded
                case .failure(let error): self.state = .error(error)
            }
            
        }, recievedValue: { recipeResponse in
            print("recievedValue")
        })
    }
    
}
