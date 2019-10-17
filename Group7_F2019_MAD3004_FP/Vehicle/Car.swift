//
//  Car.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class  Car: Vehicle ,IPrintable {
    
    
    //Declared Variables
    var model: String?
    var insurance: Bool?
    
//    method ovveride
    func displayData() {
        super.printmydata()             //Method called of Vehicle Class
        print("The model is : \(model!)")
         print("Insurance is \(insurance!)")
         }
    }
    
