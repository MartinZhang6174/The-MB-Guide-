//
//  c43sedan.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c43sedan: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C43 Sedan", aMG: true, horsepower: 362, convertible: false, hardTop: false, body: .sedan, klass: .C)
    }
}
