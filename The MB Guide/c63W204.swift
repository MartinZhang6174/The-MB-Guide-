//
//  c63W204.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-03-15.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class c63W204: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-Benz C63 AMG(W204)", aMG: true, weight: 1730, horsepower: 451, hpRPM: "6800", torque: 600, torqRPM: "5000", toHundred: 3.9, cylinder: 8, litre: 6.2, convertible: false, hardTop: false, consumption: 12.1, body: .coupe, klass: .C, driveTrain: .rearWheelDrive, topSpeed: 280, price: "N/A")
    }
}
