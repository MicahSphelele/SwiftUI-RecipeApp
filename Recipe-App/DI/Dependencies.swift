//
//  Dependencies.swift
//  Recipe-App
//
//  Created by Sphelele Ngubane on 2021/08/24.
//

import Resolver

extension Resolver : ResolverRegistering {
    
    public static func registerAllServices() {
        register { RecipeRepository()}.implements(IRecipeRepository.self)
        register { RecipedetailsViewModel() }
        register { APIClient() }
    }
}
