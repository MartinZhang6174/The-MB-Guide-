//
//  ViewController.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-16.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Defining all Mercedes vehicles here
//    let c63scoupe = c63S(carName: "Mercedes-AMG C63 S", aMG: true, horsepower: 503, convertible: true, hardTop: false, body: .coupe)
    let cKlass63SSedan = c63ssedan()
    
    @IBOutlet weak var mBCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(self.cKlass63SSedan.vehicleName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

