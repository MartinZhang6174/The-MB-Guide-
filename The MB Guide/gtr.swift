//
//  gtr.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtr: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT R", aMG: true, horsepower: 577, convertible: false, hardTop: false, body: .coupe, klass: .GT)
    }
}
