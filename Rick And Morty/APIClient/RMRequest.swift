//
//  RMRequest.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if any
    private let pathComponents: [String]
    
    /// Query arguments for API if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the API request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                
                guard let value = $0.value else {
                    return nil
                    
                }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed & constructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // Mark: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path compnents
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint,
                pathComponents: [String] = [],
                queryParameters: [URLQueryItem] = []) {
        
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharacterRequests = RMRequest(endpoint: .character)
}
