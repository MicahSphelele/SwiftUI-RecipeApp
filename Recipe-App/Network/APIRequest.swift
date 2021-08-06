//
//  Request.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/12.
//

import SwiftUI

@frozen enum HTTPMethod: String {
  case GET
  case POST
  case PUT
}

protocol APIRequest {
  associatedtype Response
  
  var method: HTTPMethod { get }
  var path: String { get }
  var body: Data? { get }
  
  func handle(response: Data) throws -> Response
}
