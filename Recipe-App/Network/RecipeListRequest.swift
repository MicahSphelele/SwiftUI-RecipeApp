//
//  RecipeListRequest.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import SwiftUI

//MARK: - All Recipes
typealias Response = RecipeListResponse

struct RecipeListRequest: APIRequest {
   
    var method: HTTPMethod { .GET }
    var path: String = (AppConstants.BASE_URL)
    var contentType: String { AppConstants.CONTENT_TYPE_JSON }
    var body: Data? { nil }
    var queryParams: [URLQueryItem?]? = []
    
    func handle(response: Data) throws -> Response {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(Response.self, from: response)
    }
    
}
