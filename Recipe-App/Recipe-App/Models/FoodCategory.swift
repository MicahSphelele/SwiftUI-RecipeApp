//
//  FoodCategory.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/11.
//

import Foundation

enum FoodCategory: String, CaseIterable {
    case CHICKEN = "Chicken"
    case BEEF = "Beef"
    case SOUP = "Soup"
    case DESSERT = "Dessert"
    case VEGETARIAN = "Vegetarian"
    case MILK = "Milk"
    case VEGAN = "Vegan"
    case PIZZA = "Pizza"
    case DONUT = "Donut"
    
    func getFoodCategory(_ value: String) -> Optional<FoodCategory>  {
        guard let result = FoodCategory.init(rawValue: value) else { return nil }
        return result
    }
    
    static var getAllFoodCategories : [FoodCategory] {
        return [FoodCategory.CHICKEN,FoodCategory.BEEF,
                FoodCategory.SOUP, FoodCategory.DESSERT,
                FoodCategory.VEGETARIAN, FoodCategory.MILK,
                FoodCategory.VEGAN, FoodCategory.PIZZA,
                FoodCategory.DONUT
        ]
    }
}

