//
//  CircuitDetailViewController.swift
//  F1App
//
//  Created by İbrahim Gün on 2.12.2021.
//

import UIKit

final class CircuitDetailViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var circuitImage: UIImageView!
    @IBOutlet weak var circuitName: UILabel!
    
    var viewModel: CircuitDetailViewModelProtocol!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.load()
    }
}

extension CircuitDetailViewController: CircuitDetailViewModelDelegate {
    func showDetail(_ presentation: CircuitDetailPresentation) {
        circuitImage.image = UIImage(named: presentation.ID + "-1")
        locationLabel.text = presentation.location + ", " + presentation.country
        circuitName.text = presentation.name
    }
}
