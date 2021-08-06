//
//  RecipeListState.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/06.
//

import SwiftUI

enum RecipeListViewModelState {
    case IDLE
    case LOADING
    case SUCCESS
    case error(Error)
}

enum AppError: Error, Equatable {
    
    case badUrl(description: String)
    case parsing(description: String)
    case network(description: String)
    
    var description: String {
        switch self {

        case .parsing(description: let value):
            return value
        case .network(description: let value):
            return value
        case .badUrl(description: let value):
            return value
        }
    }
}
