//
//  e400sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-20.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e400sedan: MBVehicleModel {
    init() {
        super.init(carName: "E400 4MATIC Sedan", aMG: false, horsepower: 329, convertible: false, hardTop: false, body: .sedan, klass: .E)
    }
}
