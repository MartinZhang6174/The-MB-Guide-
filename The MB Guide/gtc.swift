//
//  gtc.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class gtc: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG GT C", aMG: true, horsepower: 550, convertible: true, hardTop: false, body: .roadster, klass: .GT)
    }
}
