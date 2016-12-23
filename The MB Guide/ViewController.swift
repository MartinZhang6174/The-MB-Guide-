//
//  ViewController.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-16.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mBCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var c = c63S(carName: "Mercedes-AMG C63 S", aMG: true, horsepower: 503, convertible: false, hardTop: false, body: .sedan)
        var mBGagarge = MBGarage()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

