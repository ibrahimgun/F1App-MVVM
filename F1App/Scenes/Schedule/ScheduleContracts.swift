////
////  ScheduleContracts.swift
////  F1App
////
////  Created by İbrahim Gün on 18.11.2021.
////

import Foundation

protocol ScheduleViewModelProtocol {
    var delegate: ScheduleViewModelDelegate? { get set }
    func load()
    func selectGP(at index: Int)
}

enum ScheduleViewModelOutput {
    case showSchedule([SchedulePresentation])
}

enum ScheduleViewRoute {
    case information(CircuitDetailViewModelProtocol)
}

protocol ScheduleViewModelDelegate: AnyObject {
    func handleViewModelOutput(_ output: ScheduleViewModelOutput)
    func navigate(to route: ScheduleViewRoute)
}
