//
//  AppConstants.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/17.
//

import SwiftUI

class AppConstants {
    
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
}
