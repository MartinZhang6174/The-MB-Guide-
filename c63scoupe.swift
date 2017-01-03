//
//  c63scoupe.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c63scoupe: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C63 S Coupe", aMG: true, horsepower: 503, convertible: false, hardTop: false, body: .coupe, klass: .C)
    }
}
