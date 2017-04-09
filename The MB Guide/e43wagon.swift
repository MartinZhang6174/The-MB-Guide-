//
//  e43wagon.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-20.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e43wagon: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E43 Estate", aMG: true, weight: 1930, horsepower: 401, hpRPM: "6100", torque: 520, torqRPM: "2500-5000", toHundred: 4.7, cylinder: 6, litre: 3.0, convertible: false, hardTop: false, consumption: 8.6, body: .wagon, klass: .E, driveTrain: .permanentFourWheelDrive, topSpeed: 250, price: "N/A")
    }
}
