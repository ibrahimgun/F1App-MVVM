//
//  Decoders.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import Foundation

public enum Decoders {
    static let plainDateDecoder: JSONDecoder = {
    let decoder = JSONDecoder()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy"
    decoder.dateDecodingStrategy = .formatted(dateFormatter)
    return decoder
}()
}


