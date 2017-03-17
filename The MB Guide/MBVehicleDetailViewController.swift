//
//  MBVehicleDetailViewController.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import UIKit

class MBVehicleDetailViewController: UIViewController {

    var vehicleDetailImageName: String = ""
    var vehicleDetailTitleText: String = ""

    // Outlets for UI properties
    @IBOutlet weak var vehicleDetailImageView: UIImageView!
    @IBOutlet weak var vehicleDetailTitleLabel: UILabel!
    @IBOutlet var vehicleDetailImageViewTapGestureRecognizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Bodoni 72 Smallcaps", size: 24)!]

        vehicleDetailImageView.image = UIImage(named: vehicleDetailImageName)
        vehicleDetailTitleLabel.text = vehicleDetailTitleText

        // UITouch Event sensitivity detection on imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleDetailImageViewForceTouch() {
        print("Image tapped.")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
