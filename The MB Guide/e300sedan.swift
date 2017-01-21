//
//  e300sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-20.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e300sedan: MBVehicleModel {
    init() {
        super.init(carName: "E300 4MATIC Sedan", aMG: false, horsepower: 241, convertible: false, hardTop: false, body: .sedan, klass: .E)
    }
}
