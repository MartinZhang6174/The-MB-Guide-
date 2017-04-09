//
//  c43cabriolet.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class c43cabriolet: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Cabriolet", aMG: true, weight: 1870, horsepower: 362, hpRPM: "5500-6000", torque: 520, torqRPM: "2000-4200", toHundred: 4.8, cylinder: 6, litre: 3.0, convertible: true, hardTop: false, consumption: 8.4, body: .coupe, klass: .C, driveTrain: .permanentFourWheelDrive, topSpeed: 250, price: "$60,400")
    }
}
