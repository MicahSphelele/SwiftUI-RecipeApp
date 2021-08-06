//
//  RecipeDto.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import SwiftUI

struct RecipeListResponse: Codable {
    let count: Int
    let recipes: [Recipe]
    
    enum CodingKeys: String, CodingKey {
        case count
        case recipes = "results"
        
    }
}
