////
////  ScheduleViewModel.swift
////  F1App
////
////  Created by İbrahim Gün on 18.11.2021.
////

import Foundation

final class ScheduleViewModel: ScheduleViewModelProtocol {
    
    weak var delegate: ScheduleViewModelDelegate?
    private let service: ScheduleServiceProtocol
    private var schedule: [Schedule] = []
    
    init(service: ScheduleServiceProtocol) {
        self.service = service
    }
    
    func load() {
        
        service.fetchSchedule { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .succes(let response):
                self.schedule = response.Races
                let presentations = response.Races.map( { SchedulePresentation(schedule: $0)})
                self.notify(.showSchedule(presentations))
            case .failure(let error):
                print(error)
            }
        }
        
    }
    func selectGP(at index: Int) {
        let schedules = schedule[index]
        let viewModel = CircuitDetailViewModel(circuit: schedules)
        delegate?.navigate(to: .information(viewModel))
    }
    
    private func notify(_ output: ScheduleViewModelOutput) {
        delegate?.handleViewModelOutput(output)
    }
    
}
