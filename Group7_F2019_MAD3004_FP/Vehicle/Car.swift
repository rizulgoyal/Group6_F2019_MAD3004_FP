//
//  Car.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class  Car: Vehicle {
    //Declared Variables
    var carmaintainceCost :Int?
    var insuranceCompany :String?
    var insurance :String?
    
    //protocol method
    override func printmydata()  {
           print("The Make is : \(carmaintainceCost!)")
           print("The plate no is : \(insuranceCompany!)")
           print("The Vehicle is : \(insurance!)")
    
}
}
