//
//  e63sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-19.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e63sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E63 4MATIC Sedan", aMG: true, horsepower: 563, convertible: false, hardTop: false, body: .sedan, klass: .E)
    }
}
