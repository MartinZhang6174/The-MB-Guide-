//
//  MBGarage.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-20.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

class MBGarage: NSObject {
    
    var vehicleLineup = [MBVehicleModel]()
    
    var c63s = c63S(carName: "Mercedes-AMG C63 S", aMG: true, horsepower: 503, convertible: false, hardTop: false, body: .sedan)
    
//    func putIntoGargage(vehicle: MBVehicleModel) {
//        if !vehicleLineup.contains(vehicle) {
//            vehicleLineup.add(vehicle)
//        } else {
//            print("Error: vehicle already exists.")
//        }
//    }
    
}
