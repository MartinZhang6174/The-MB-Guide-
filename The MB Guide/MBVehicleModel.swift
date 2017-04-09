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
    case coupe, sedan, wagon, suv, roadster, van
}

enum vehicleDriveTrainEnum {
    case frontWheelDrive, permanentFourWheelDrive, adjustableFourWheelDrive, rearWheelDrive
}

class MBVehicleModel: NSObject {

    let vehicleName: String
//    let vehicleDescription: String
    let mSRP: String // A String value because there are can be commas and a range ----------->>>>>>>>> in USD!!!!
    let weight: Int // Use EU Kerb weight in kilograms
    let horsepower: Int // Use EU horsepower since AMG website doesn't provide American ponnies (PS is the unit wanted)
    let maxHorsepowerRPM: String // A String because there will sometimes be two values <<<<<<<
    let torque: Int // Nm
    let maxTorqueRPM: String // A String because there will sometimes be two values <<<<<<<
    let engineCylinderNumber: Int
    let engineLitreNumber: Double // Use litre
    let isAMGVehicle: Bool
    let zeroToHundredTime: Double
    let isConvertible: Bool
    let isHardtopConvertible: Bool
    let fuelConsumption: Double // ----------------------->>>>>>>>>  LITRE PER 100 KM
    let topSpeed: Int // In km/h; the speed to where the electronic limiter hits(no tunes)
    let bodystyle: vehicleBodyStyleEnum
    let classTitle: vehicleClassTitle
    let driveTrain: vehicleDriveTrainEnum
    
    init(carName: String, aMG: Bool, weight: Int, horsepower: Int, hpRPM: String, torque: Int, torqRPM: String, toHundred: Double, cylinder: Int, litre: Double, convertible: Bool, hardTop: Bool, consumption: Double, body: vehicleBodyStyleEnum, klass: vehicleClassTitle, driveTrain: vehicleDriveTrainEnum, topSpeed: Int, price: String) {
        self.vehicleName = carName
        self.weight = weight
        self.horsepower = horsepower
        self.maxHorsepowerRPM = hpRPM
        self.torque = torque
        self.maxTorqueRPM = torqRPM
        self.engineCylinderNumber = cylinder
        self.engineLitreNumber = litre
        self.isAMGVehicle = aMG
        self.zeroToHundredTime = toHundred
        self.isConvertible = convertible
        self.isHardtopConvertible = hardTop
        self.fuelConsumption = consumption
        self.bodystyle = body
        self.classTitle = klass
        self.driveTrain = driveTrain
        self.topSpeed = topSpeed
        self.mSRP = price
    }
}
