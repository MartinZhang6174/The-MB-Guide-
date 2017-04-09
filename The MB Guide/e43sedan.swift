//
//  e43sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-19.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e43sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E43 Sedan", aMG: true, weight: 1765, horsepower: 401, hpRPM: "6100", torque: 520, torqRPM: "2500-5000", toHundred: 4.6, cylinder: 6, litre: 3.0, convertible: false, hardTop: false, consumption: 8.4, body: .sedan, klass: .E, driveTrain: .permanentFourWheelDrive, topSpeed: 250, price: "$72,400")
    }
}
