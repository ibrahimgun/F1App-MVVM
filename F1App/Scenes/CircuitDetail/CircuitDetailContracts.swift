//
//  CircuitDetailContracts.swift
//  F1App
//
//  Created by İbrahim Gün on 2.12.2021.
//

import Foundation

protocol CircuitDetailViewModelDelegate: AnyObject {
    func showDetail(_ presentation: CircuitDetailPresentation )
}

protocol CircuitDetailViewModelProtocol {
    var delegate: CircuitDetailViewModelDelegate? { get set }
    func load()
}
