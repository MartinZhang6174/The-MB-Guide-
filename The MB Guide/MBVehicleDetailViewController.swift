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
    var tapGestureRecognizer = UITapGestureRecognizer()
    
    var imageAlphaReduced = false
    
    // Outlets for UI properties
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var vehicleDetailTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print(vehicleDetailImageName)
        
        vehicleDetailTitleLabel.text = vehicleDetailTitleText
        
        mainScrollView.frame = self.view.frame
        mainScrollView.backgroundColor = UIColor.darkGray
        
        tapGestureRecognizer.addTarget(self, action: #selector(handleTouchOnImageScrollView))
        tapGestureRecognizer.numberOfTouchesRequired = 1
//        tapGestureRecognizer? = UIGestureRecognizer(target: self, action: #selector(handleTouchOnImageScrollView)) as! UITapGestureRecognizer 
        
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
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(tapGestureRecognizer)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.contentSize.height = imageView.frame.height
            mainScrollView.addSubview(imageView)
            
            mainScrollView.addGestureRecognizer(tapGestureRecognizer)
        }
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Bodoni 72 Smallcaps", size: 24)!]
        
        
        //        self.tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleScrollViewTouchEvent))
        //        tapGestureRecognizer?.numberOfTapsRequired = 1
        //        self.mainScrollView.addGestureRecognizer(tapGestureRecognizer!)
        
    }
    
    ////    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    ////        guard let touch = touches.first else { return }
    ////        print(touch.force)
    ////    }
    //
    //    func handleScrollViewTouchEvent() {
    //        print("touch happened.")
    //            self.mainScrollView.isHidden = true
    //    }
    
    func handleTouchOnImageScrollView() {
        print("Image touched once.")
        if !self.imageAlphaReduced {
            imageAlphaReduced = true
            mainScrollView.alpha = 0.1
            mainScrollView.isScrollEnabled = false
        } else {
            imageAlphaReduced = false
            mainScrollView.alpha = 1.0
            mainScrollView.isScrollEnabled = true
        }
        
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
