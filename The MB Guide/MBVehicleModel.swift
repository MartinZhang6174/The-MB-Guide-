//
//  MBVehicleModel.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-19.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

enum vehicleClassTitle {
    case A, B, C, CLA, CLS, E, G, GLA, GLC, GLE, GLS, S, SL, SLC, V, GT, Maybach
}

enum vehicleBodyStyleEnum {
    case coupe, sedan, wagon, sUV, roadster, van
}

class MBVehicleModel: NSObject {

    var vehicleName: String
    var horsepower: Int
    var isAMGVehicle: Bool
    var isConvertible: Bool
    var isHardtopConvertible: Bool
    var bodystyle: vehicleBodyStyleEnum
    var classTitle: vehicleClassTitle
    
    init(carName: String, aMG: Bool, horsepower: Int, convertible: Bool, hardTop: Bool, body: vehicleBodyStyleEnum, klass: vehicleClassTitle) {
        self.vehicleName = carName
        self.isAMGVehicle = aMG
        self.horsepower = horsepower
        self.isConvertible = convertible
        self.isHardtopConvertible = hardTop
        self.bodystyle = body
        self.classTitle = klass
    }
    
}
