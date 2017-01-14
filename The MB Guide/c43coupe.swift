//
//  c43coupe.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-13.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

class c43coupe: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Coupe", aMG: true, horsepower: 362, convertible: false, hardTop: false, body: .coupe, klass: .C)
    }
}
