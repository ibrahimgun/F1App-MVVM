//
//  CircuitDetailViewModel.swift
//  F1App
//
//  Created by İbrahim Gün on 2.12.2021.
//

import Foundation

final class CircuitDetailViewModel: CircuitDetailViewModelProtocol {
    weak var delegate: CircuitDetailViewModelDelegate?
    private let presentation: CircuitDetailPresentation
    
    init(circuit: Schedule) {
        self.presentation = CircuitDetailPresentation(circuit: circuit)
    }
    
    func load() {
        delegate?.showDetail(presentation)
    }
    
    
}
