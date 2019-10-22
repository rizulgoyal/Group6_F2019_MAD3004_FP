//
//  Motorcycle.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Motorcycle: Vehicle {
    //Declared variables
      var model :String?
      var insurance : Bool?
    
    //method Iprintable
       override func displayData() {
    print("Employee has a Motorcycle")
        super.displayData() //comment added
        print("    -   Model : \(model!)")
        print("    -   Insurance : \(insurance!)")
    }
}
