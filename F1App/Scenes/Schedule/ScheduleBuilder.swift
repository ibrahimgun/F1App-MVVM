//
//  ScheduleBuilder.swift
//  F1App
//
//  Created by İbrahim Gün on 18.11.2021.
//

import UIKit

final class ScheduleBuilder {

    static func make() -> ScheduleViewController {
        let storyboard = UIStoryboard(name: "Schedule", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ScheduleViewController") as! ScheduleViewController
        viewController.viewModel = ScheduleViewModel(service: ScheduleService())
        return viewController
    }
}
