//
//  Vehicle.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Vehicle : IPrintable  {


//declared variables

 var make :String?
 var plate :String?
 var type : String?

    

    

    //protocol method
     func displayData()  {
        
        
        print("    -   Make : \(make!)")
        print("    -   Plate : \(plate!)")

    }
}


