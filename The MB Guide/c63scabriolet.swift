//
//  c63scabriolet.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c63scabriolet: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C63 S Cabriolet", aMG: true, weight: 1925, horsepower: 510, hpRPM: "5500-6250", torque: 700, torqRPM: "1750-4500", toHundred: 4.1, cylinder: 8, litre: 4.0, convertible: true, hardTop: false, consumption: 9.3, body: .coupe, klass: .C, driveTrain: .rearWheelDrive, topSpeed: 280, price: "$80,850")
    }
}
