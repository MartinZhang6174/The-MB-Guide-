//
//  gts.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gts: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT S", aMG: true, horsepower: 503, convertible: false, hardTop: false, body: .coupe, klass: .GT)
    }
}
