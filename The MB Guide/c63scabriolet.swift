//
//  c63scabriolet.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-02.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation
import UIKit

class c63scabriolet: MBVehicleModel {
    init() {
        super.init(carName: "Mercedes-AMG C63 S Cabriolet", aMG: true, horsepower: 503, convertible: true, hardTop: false, body: .coupe, klass: .C)
    }
}
