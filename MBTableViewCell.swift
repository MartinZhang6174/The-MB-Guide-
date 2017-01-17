//
//  MBTableViewCell.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-11.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import UIKit

class MBTableViewCell: UITableViewCell {
    
//    let vehicleTitleLabel: UILabel?
//    let vehicleImageView: UIImageView?

    @IBOutlet weak var vehicleNameLabel: UILabel!
    @IBOutlet weak var vehicleImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
