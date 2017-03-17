//
//  gts.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gts: MBVehicleModel {
    init() {
        // Configuration based on 2015 European model
        super.init(carName: "Mercedes-AMG GT S", aMG: true, weight: 1645, horsepower: 510, hpRPM: "6250", torque: 670, torqRPM: "1750–4750", toHundred: 3.8, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 9.4, body: .coupe, klass: .GT, driveTrain: .rearWheelDrive, topSpeed: 310, price: "$131,200")
    }
}
