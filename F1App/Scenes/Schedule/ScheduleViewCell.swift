//
//  ScheduleViewCell.swift
//  F1App
//
//  Created by İbrahim Gün on 1.12.2021.
//

import UIKit

class ScheduleViewCell: UITableViewCell {

    @IBOutlet weak var scheduleView: UIView!
    @IBOutlet weak var gpLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
