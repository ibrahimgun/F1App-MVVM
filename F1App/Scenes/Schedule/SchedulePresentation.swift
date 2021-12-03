////
////  SchedulePresentation.swift
////  F1App
////
////  Created by İbrahim Gün on 17.11.2021.
////

import Foundation

struct SchedulePresentation {
    let name: String
    let date: String
    let circuitCountry: String
    let circuitLocation: String
}

extension SchedulePresentation {
    init(schedule: Schedule) {
        self.init(name: schedule.raceName, date: schedule.date, circuitCountry: schedule.Circuit.Location.country, circuitLocation: schedule.Circuit.Location.locality )
    }
}
