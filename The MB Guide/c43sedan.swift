//
//  c43sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c43sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Sedan", aMG: true, weight: 1690, horsepower: 362, hpRPM: "5500-6000", torque: 520, torqRPM: "2000-4200", toHundred: 4.7, cylinder: 6, litre: 3.0, convertible: false, hardTop: false, consumption: 8.0, body: .sedan, klass: .C, driveTrain: .permanentFourWheelDrive, topSpeed: 250, price: "$52,000")
    }
}
