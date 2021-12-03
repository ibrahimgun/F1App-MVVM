//
//  ScheduleResponse.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import Foundation

public struct ScheduleResponse: Decodable {
    
    private enum RootCodingKeys: String, CodingKey {
        case MRData
    }
    
    private enum MrDataCodingKeys: String, CodingKey {
        case RaceTable
    }
    
    private enum TableCodingKeys: String, CodingKey {
        case Races
    }
    
    let Races: [Schedule]
    
    public init(from decoder: Decoder) throws {
        let rootValues = try decoder.container(keyedBy: RootCodingKeys.self)
        let mrDataContainer = try rootValues.nestedContainer(keyedBy: MrDataCodingKeys.self, forKey: .MRData)
        let tableContainer = try mrDataContainer.nestedContainer(keyedBy: TableCodingKeys.self, forKey: .RaceTable)
        self.Races = try tableContainer.decode([Schedule].self, forKey: .Races)
    }
}
