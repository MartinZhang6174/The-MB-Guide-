//
//  c63ssedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-19.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c63ssedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C63 S Sedan", aMG: true, weight: 1730, horsepower: 510, hpRPM: "5500-6250", torque: 700, torqRPM: "1750-4500", toHundred: 4.0, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 8.4, body: .sedan, klass: .C, driveTrain: .rearWheelDrive, topSpeed: 290, price: "$72,800")
    }
}
