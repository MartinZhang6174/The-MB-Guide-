//
//  c43cabriolet.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class c43cabriolet: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Cabriolet", aMG: true, horsepower: 362, convertible: true, hardTop: false, body: .coupe, klass: .C)
    }
}
