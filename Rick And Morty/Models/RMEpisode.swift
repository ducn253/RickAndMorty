//
//  RMEpisode.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import Foundation

struct Episode: Codable {
    
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
