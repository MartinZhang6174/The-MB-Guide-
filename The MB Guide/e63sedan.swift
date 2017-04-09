//
//  e63sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-19.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e63sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E63 4MATIC+ Sedan", aMG: true, weight: 1875, horsepower: 571, hpRPM: "5750-6500", torque: 750, torqRPM: "2250-5000", toHundred: 3.5, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 9.1, body: .sedan, klass: .E, driveTrain: .adjustableFourWheelDrive, topSpeed: 300, price: "N/A")
    }
}
