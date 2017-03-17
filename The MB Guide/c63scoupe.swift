//
//  c63scoupe.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c63scoupe: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C63 S Coupe", aMG: true, weight: 1800, horsepower: 510, hpRPM: "5500-6250", torque: 700, torqRPM: "1750-4500", toHundred: 3.9, cylinder: 8, litre: 4.0, convertible: false, hardTop: false, consumption: 8.9, body: .coupe, klass: .C, driveTrain: .rearWheelDrive, topSpeed: 290, price: "$75,000")
    }
}
