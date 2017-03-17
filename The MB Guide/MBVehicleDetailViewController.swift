//
//  MBVehicleDetailViewController.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import UIKit

class MBVehicleDetailViewController: UIViewController {
    
    var selectedVehicle: MBVehicleModel?
    var vehicleDetailImageName: String = ""
    var vehicleDetailTitleText: String = ""
    
    // Outlets for UI properties
    @IBOutlet weak var mainScrollView: UIScrollView!
    //    @IBOutlet weak var vehicleDetailImageView: UIImageView!
    @IBOutlet weak var vehicleDetailTitleLabel: UILabel!
    @IBOutlet var vehicleDetailImageViewTapGestureRecognizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(vehicleDetailImageName)
        
        mainScrollView.frame = self.view.frame
        mainScrollView.backgroundColor = UIColor.black
        
        // Initialize image array
        var vehicleDetailImagesArray: Array = [UIImage]()
        
        // Maximum image number: 7
        for n in 1..<8 {
            let detailImage = UIImage(named: vehicleDetailImageName+"_Detail-\(n)")
            if detailImage != nil {
                vehicleDetailImagesArray.append(detailImage!)
            } else {
                // Temporary code here for demo display
                let demoImage = UIImage(named: vehicleDetailImageName)
                vehicleDetailImagesArray.append(demoImage!)
            }
        }
        
        // Use 1 cuz the first imageview I want generated to be on the right of the first already generated image
        // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> prepareForSegue complication forces me to do this
        for i in 0..<vehicleDetailImagesArray.count {
            let imageView = UIImageView()
            imageView.image = vehicleDetailImagesArray[i]
            imageView.contentMode = .scaleAspectFill
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.view.frame.width, height: 375)
            imageView.clipsToBounds = true
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.contentSize.height = imageView.frame.height
            mainScrollView.addSubview(imageView)
        }
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Bodoni 72 Smallcaps", size: 24)!]
        
        //        vehicleDetailImageView.image = UIImage(named: vehicleDetailImageName)
        vehicleDetailTitleLabel.text = vehicleDetailTitleText
        
        // UITouch Event sensitivity detection on imageView
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDetailImageViewForceTouch))
        tapRecognizer.numberOfTapsRequired = 1
        
        //        vehicleDetailImageView.isUserInteractionEnabled = true
        //        vehicleDetailImageView.addGestureRecognizer(tapRecognizer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleDetailImageViewForceTouch() {
        print("The \(selectedVehicle?.vehicleName) has an astonishing \(selectedVehicle?.horsepower)bhp, a competitive number within its class.")
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
