//
//  APIEnvironment.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/12.
//

import Foundation

struct APIEnvironment {
    var baseUrl: URL
}

extension APIEnvironment {
    static let dev = APIEnvironment(baseUrl: URL(string: "https://food2fork.ca/api/recipe")!)
}
