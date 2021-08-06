//
//  Recipe.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/11.
//

import SwiftUI

struct Recipe: Codable {
    let pk: Int
    let title:String?
    let publisher:String?
    let featuredImage:String?
    let rating:Int?
    let sourceUrl:String?
    let description:String?
    let cookingInstructions:String?
    let ingredients: [String]?
    let dateAdded:String?
    let dateUpdated:String?
    
    enum CodingKeys: String, CodingKey {
        case pk, title, publisher, rating, description, ingredients
        case featuredImage = "featured_image"
        case sourceUrl = "source_url"
        case cookingInstructions = "cooking_instructions"
        case dateAdded = "date_added"
        case dateUpdated = "date_updated"
        
    }
}

