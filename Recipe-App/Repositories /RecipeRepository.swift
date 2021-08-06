//
//  RecipeRepository.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import Foundation
import Combine

protocol IRecipeRepository {
    func getRecipeList(page: Int,query: String,completionState: @escaping ((Subscribers.Completion<Error>) -> Void),
                                         recievedValue: @escaping ((RecipeListResponse) -> Void))
}

struct RecipeRepository: IRecipeRepository {
        
    func getRecipeList(page: Int,query:
                        String,completionState: @escaping ((Subscribers.Completion<Error>) -> Void),
                       recievedValue: @escaping ((RecipeListResponse) -> Void)) {
        
        //var subscriptions: Set<AnyCancellable> = []
       // let request = RecipeListRequest(page, query)
        
    }
}
