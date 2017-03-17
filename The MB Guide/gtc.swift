//
//  gtc.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtc: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT C Roadster", aMG: true, weight: 1735, horsepower: 557, hpRPM: "5750-6750", torque: 680, torqRPM: "1900-5750", toHundred: 3.7, cylinder: 8, litre: 4.0, convertible: true, hardTop: false, consumption: 11.4, body: .roadster, klass: .GT, driveTrain: .rearWheelDrive, topSpeed: 316, price: "N/A")
    }
}
