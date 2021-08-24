//
//  APIClient.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/12.
import Foundation
import Combine

enum APIError: Error {
   case requestFailed(Int)
}

extension APIError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .requestFailed:
            return AppConstants.REQUEST_FAILED_MESSAGE
        }
    }
}

struct APIClient {
    let urlSession: URLSession
    //let environment: APIEnvironment
    
    
    init(session: URLSession = .shared) {
        urlSession = session
        //environment = APIEnvironment
    }
    
    func pulisherForRequest<T: APIRequest>(_ request: T) -> AnyPublisher<T.Response, Error> {
        var urlComoponent = URLComponents(string: request.path)!
        
        if !request.queryParams!.isEmpty {
            
            urlComoponent.queryItems = request.queryParams as? [URLQueryItem]
        }
    
        var urlRequest = URLRequest(url: urlComoponent.url!)
        urlRequest.addValue(request.contentType, forHTTPHeaderField: "Content-Type")
        urlRequest.addValue(AppConstants.TOKEN, forHTTPHeaderField: "Authorization")
        urlRequest.httpMethod = request.method.rawValue
        urlRequest.httpBody = request.body
        
        let publisher = urlSession.dataTaskPublisher(for: urlRequest).tryMap {
            data, response -> Data in
            guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {        
                let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 0
                throw APIError.requestFailed(statusCode)
            }
            return data
        }
        .tryMap { data -> T.Response in
            try request.handle(response: data)
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
        
        return publisher
    }
    
}

