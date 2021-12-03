//
//  CircuitDetailBuilder.swift
//  F1App
//
//  Created by İbrahim Gün on 2.12.2021.
//

import Foundation
import UIKit

final class CircuitDetailBuilder {
    
    static func make(with viewModel: CircuitDetailViewModelProtocol) -> CircuitDetailViewController {
        let storyboard = UIStoryboard(name: "CircuitDetail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CircuitDetailViewController") as! CircuitDetailViewController
        viewController.viewModel = viewModel
        return viewController
    }
}
