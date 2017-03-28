//
//  MBMainTableViewCell.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-03-27.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import UIKit

class MBMainTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellAMGLogoView: UIImageView!
    @IBOutlet weak var cellVehicleTitleLabel: UILabel!
    
    override func prepareForReuse() {
        cellAMGLogoView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
