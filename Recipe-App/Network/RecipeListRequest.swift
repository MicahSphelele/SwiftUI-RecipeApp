//
//  RecipeListRequest.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import Foundation

//MARK: - All Recipes
typealias Response = RecipeListResponse

struct RecipeListRequest: APIRequest {
    
    private let page: Int
    private let query: String
    
    init(_ page: Int, _ query: String) {
        self.page = page
        self.query = query
    }
    
    var method: HTTPMethod { .GET }
    var path: String = "\(AppConstants.BASE_URL)\(AppConstants.QUERY_PARAM_PAGE)\(self.page)\(AppConstants.QUERY_PARAM_QUERY)\(self.query)"
    var contentType: String { AppConstants.CONTENT_TYPE_JSON }
    var body: Data? { nil }
    
    func handle(response: Data) throws -> RecipeListResponse {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(RecipeListResponse.self, from: response)
    }
    
}
