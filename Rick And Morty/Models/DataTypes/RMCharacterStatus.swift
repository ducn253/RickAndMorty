//
//  RMCharacterStatus.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
