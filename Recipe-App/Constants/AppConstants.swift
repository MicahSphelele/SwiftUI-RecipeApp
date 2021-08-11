//
//  AppConstants.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/17.
//

import SwiftUI

class AppConstants {
    
    static let TOKEN = "Token 9c8b06d329136da358c2d00e76946b0111ce2c48"
    
    static let REQUEST_FAILED_MESSAGE = "Sorry there is a problem with the service. Please check your connection."
    
    static let BASE_URL = "https://food2fork.ca/api/recipe"
    
     static func getImageWithUrl(url: String) -> URL {
         return URL(string: url)!
     }
    
    static func getPublishedText(dateUpdated: String?, publisher: String) -> String{
        
        if dateUpdated != nil {
            
            return "Updated \(dateUpdated ?? "April 05 2020") by \(publisher)"
            
        } else {
            
            return "Updated by \(publisher)"
        }
    }
    
    static let CONTENT_TYPE_JSON = "application/json"
}
