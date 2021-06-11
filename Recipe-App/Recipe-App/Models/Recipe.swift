//
//  Recipe.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/11.
//

import Foundation

struct Recipe: Codable {
    let id: Int?
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
}
