//
//  gtr.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtr: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT R", aMG: true, weight: 1630, horsepower: 585, hpRPM: "6250", torque: 700, torqRPM: "1900–5500", toHundred: 3.6, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 11.4, body: .coupe, klass: .GT, driveTrain: .rearWheelDrive, topSpeed: 318, price: "N/A")
    }
}
