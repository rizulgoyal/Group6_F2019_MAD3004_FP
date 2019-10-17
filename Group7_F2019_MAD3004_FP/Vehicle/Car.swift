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
    var model: String?
    var insurance: Bool?
    
//    method ovveride
     override func displayData() {
        print("The employee has Car")
        super.displayData()
        //Method called of Vehicle Class
        print("The model is : \(model!)")
         print("Insurance is \(insurance!)")
         }
    }
  
