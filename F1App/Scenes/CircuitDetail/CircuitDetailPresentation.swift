//
//  CircuitDetailPresentation.swift
//  F1App
//
//  Created by İbrahim Gün on 2.12.2021.
//

import Foundation

struct CircuitDetailPresentation {
    let ID: String
    let name: String
    let URL: URL?
    let country: String
    let location: String
}
extension CircuitDetailPresentation {
    init(circuit: Schedule) {
        self.init(ID: circuit.Circuit.circuitId, name: circuit.Circuit.circuitName, URL: circuit.Circuit.url, country: circuit.Circuit.Location.country, location: circuit.Circuit.Location.locality)
    }
}
