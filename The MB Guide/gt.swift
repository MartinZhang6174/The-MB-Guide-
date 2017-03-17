//
//  gt.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gt: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT", aMG: true, weight: 1615, horsepower: 456, hpRPM: "6250", torque: 600, torqRPM: "1600-5000", toHundred: 4.0, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 9.3, body: .coupe, klass: .GT, driveTrain: .rearWheelDrive, topSpeed: 304, price: "$111,200")
    }
}
