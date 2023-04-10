//
//  RMEndpoint.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character // "character
    
    /// Endpoint to get location info
    case location
    
    /// Endpoint to get episode info
    case episode
}
