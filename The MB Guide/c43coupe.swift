//
//  c43coupe.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class c43coupe: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Coupe", aMG: true, weight: 1735, horsepower: 362, hpRPM: "5500-6000", torque: 520, torqRPM: "2000-4200", toHundred: 4.7, cylinder: 6, litre: 3.0, convertible: false, hardTop: false, consumption: 8.0, body: .coupe, klass: .C, driveTrain: .permanentFourWheelDrive, topSpeed: 250, price: "$55,500")
    }
}
