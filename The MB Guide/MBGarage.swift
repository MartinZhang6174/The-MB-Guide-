//
//  MBGarage.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-01-10.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import Foundation

// Creating this class to contain the entire MB AMG lineup
class MBGarage {
    
    // Defining all vehicle array
    var allVehicles: [MBVehicleModel] = []
    
    // A klass
    let aKlass45Sedan = a45()
    
    // C klass
    let cKlass63SSedan = c63ssedan()
    let cKlass63SCoupe = c63scoupe()
    let cKlass43Sedan = c43sedan()
    let cKlass43Coupe = c43coupe()
    let cKlass43Cab = c43cabriolet()
    let cKlass63SCab = c63scabriolet()
    let cKlass63W204 = c63W204()
    
    // E klass
    let eKlass43Sedan = e43sedan()
    let eKlass43Wagon = e43wagon()
    let eKlass63Sedan = e63sedan()
    let eklass63SSedan = e63ssedan()
    
    // GT klass
    let gtKlassCoupe = gt()
    let gtKlassRoadster = gtroadster()
    let gtKlassSCoupe = gts()
    let gtKlassRCoupe = gtr()
    let gtKlassCRoadster = gtc()
    
    func allMBVehicles() -> [MBVehicleModel] {
        
        allVehicles.append(aKlass45Sedan)
        
        allVehicles.append(cKlass63SSedan)
        allVehicles.append(cKlass63SCoupe)
        allVehicles.append(cKlass43Sedan)
        allVehicles.append(cKlass43Coupe)
        allVehicles.append(cKlass43Cab)
        allVehicles.append(cKlass63SCab)
        allVehicles.append(cKlass63W204)
        
        allVehicles.append(eKlass43Sedan)
        allVehicles.append(eKlass43Wagon)
        allVehicles.append(eKlass63Sedan)
        allVehicles.append(eklass63SSedan)
        
        allVehicles.append(gtKlassCoupe)
        allVehicles.append(gtKlassRoadster)
        allVehicles.append(gtKlassSCoupe)
        allVehicles.append(gtKlassRCoupe)
        allVehicles.append(gtKlassCRoadster)
        
        return allVehicles
    }
}
