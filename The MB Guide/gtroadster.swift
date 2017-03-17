//
//  gtroadster.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-02-04.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtroadster: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT Roadster", aMG: true, weight: 1670, horsepower: 476, hpRPM: "6000", torque: 630, torqRPM: "1700-5000", toHundred: 4.0, cylinder: 8, litre: 4.0, convertible: true, hardTop: false, consumption: 9.4, body: .roadster, klass: .GT, driveTrain: .rearWheelDrive, topSpeed: 302, price: "N/A")
    }
}
