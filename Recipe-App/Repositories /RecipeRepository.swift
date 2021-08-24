//
//  RecipeRepository.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import SwiftUI
import Combine
import Resolver

protocol IRecipeRepository {
    func getRecipeList(page: Int,query: String,completionState: @escaping ((Subscribers.Completion<Error>) -> Void),
                                         recievedValue: @escaping ((RecipeListResponse) -> Void))
}

final class RecipeRepository: IRecipeRepository {
       
    private var subscriptions: Set<AnyCancellable> = []
    
    func getRecipeList(page: Int,query: String,
                       completionState: @escaping ((Subscribers.Completion<Error>) -> Void),
                       recievedValue: @escaping ((RecipeListResponse) -> Void)) {
        
        
        var request: RecipeListRequest = RecipeListRequest()
        request.queryParams?.append(URLQueryItem(name: "page", value: String(page)))
        request.queryParams?.append(URLQueryItem(name: "query", value: query))
        
        @Injected  var client: APIClient
        
        client.pulisherForRequest(request)
            .sink(receiveCompletion: {
                result in
                print("Error: \(result)")
                completionState(result)
            }, receiveValue: {
                reciepes in recievedValue(reciepes)
                
            })
            .store(in: &subscriptions)
            
        
    }
}
