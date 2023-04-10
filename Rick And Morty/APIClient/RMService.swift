//
//  RMService.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import Foundation


/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton
    static let shared = RMService()
    
    /// Private constructor
    private init() {
        
    }
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
