//
//  e63ssedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-19.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e63ssedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E63 S 4MATIC+ Sedan", aMG: true, weight: 1880, horsepower: 612, hpRPM: "5750-6500", torque: 850, torqRPM: "2500-4500", toHundred: 3.4, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 9.1, body: .sedan, klass: .E, driveTrain: .adjustableFourWheelDrive, topSpeed: 300, price: "N/A")
    }
}
