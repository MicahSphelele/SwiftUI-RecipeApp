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
    // TODO: - Sphe to fill URL
  static let dev = APIEnvironment(baseUrl: URL(string: "https://tobeFilled")!)
}
