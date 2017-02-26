//
//  e43sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-19.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e43sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E43 4MATIC Sedan", aMG: true, horsepower: 396, convertible: false, hardTop: false, body: .sedan, klass: .E)
    }
}
