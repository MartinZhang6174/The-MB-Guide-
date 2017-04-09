//
//  glc63coupe.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-04-08.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class glc63: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GLC 63 S 4MATIC+", aMG: true, weight: 2010, horsepower: 510, hpRPM: "5500-6250", torque: 700, torqRPM: "1750-4500", toHundred: 3.8, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 10.7, body: .suv, klass: .GLC, driveTrain: .adjustableFourWheelDrive, topSpeed: 250, price: "To Be Released")
    }
}
