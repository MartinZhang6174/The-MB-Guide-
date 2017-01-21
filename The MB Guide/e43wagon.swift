//
//  e43wagon.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-20.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class e43wagon: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG E43 4MATIC Wagon", aMG: true, horsepower: 396, convertible: false, hardTop: false, body: .wagon, klass: .E)
    }
}
