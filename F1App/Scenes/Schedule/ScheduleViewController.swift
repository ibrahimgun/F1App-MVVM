////
////  ViewController.swift
////  F1App
////
////  Created by İbrahim Gün on 17.11.2021.
////

import UIKit

final class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let service: ScheduleServiceProtocol! = ScheduleService()
    
    var viewModel: ScheduleViewModelProtocol! {
        didSet {
            viewModel.delegate = self
        }
    }
    private var scheduleList: [SchedulePresentation] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.load()
        tableView.dataSource = self
        tableView.delegate = self
        title = "F1 Schedule & Detail"
    }
}

extension ScheduleViewController: ScheduleViewModelDelegate {
    func handleViewModelOutput(_ output: ScheduleViewModelOutput) {
        switch output {
        case .showSchedule(let scheduleList):
            self.scheduleList = scheduleList
            tableView.reloadData()
        }
    }
    
    func navigate(to route: ScheduleViewRoute) {
        switch route {
        case .information(let viewModel):
           let viewController = CircuitDetailBuilder.make(with: viewModel)
            show(viewController, sender: nil)
        }
    }
}


extension ScheduleViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleCell", for: indexPath) as! ScheduleViewCell
        let schedule = scheduleList[indexPath.row]
        cell.gpLabel.text = schedule.name
        cell.locationLabel.text = schedule.circuitLocation
        cell.dateLabel.text = schedule.date
        cell.countryImage.image = UIImage(named: schedule.circuitCountry)
        
        // UI
        cell.scheduleView.layer.cornerRadius = cell.scheduleView.frame.height / 16
        cell.countryImage.layer.cornerRadius = 20
        cell.countryImage.clipsToBounds = true
        return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scheduleList.count
    }
}

extension ScheduleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false) 
        viewModel.selectGP(at: indexPath.row)
    }
}
