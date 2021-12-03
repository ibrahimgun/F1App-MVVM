//
//  Schedule.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import Foundation

public struct Schedule: Decodable {
    public let season: String
    public let round: String
    public let raceName: String
    public let Circuit: circuit
    public let date: String
    public let time: String
}

public struct circuit: Decodable {
    public let circuitId: String
    public let url: URL
    public let circuitName: String
    public let Location: location
}

public struct location: Decodable {
    public let locality: String
    public let country: String
    
}
