//
//  a45.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-20.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class a45: MBVehicleModel {
    init() {
        // A45 is not for sale in North America
        super.init(carName: "Mercedes-AMG A45 4MATIC Sedan",
                   aMG: true, weight: 1555, horsepower: 381, hpRPM: "6000", torque: 475, torqRPM: "2250-5000", toHundred: 4.2, cylinder: 4, litre: 2.1, convertible: false, hardTop: false, consumption: 7.3, body: .sedan, klass: .A, driveTrain: .permanentFourWheelDrive, topSpeed: 270, price: "N/A")
    }
}
