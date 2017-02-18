//
//  gtroadster.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-02-04.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtroadster: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT Roadster", aMG: true, horsepower: 469, convertible: true, hardTop: false, body: .roadster, klass: .GT)
    }
}
