//
//  gt.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gt: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT", aMG: true, horsepower: 456, convertible: false, hardTop: false, body: .coupe, klass: .GT)
    }
}
