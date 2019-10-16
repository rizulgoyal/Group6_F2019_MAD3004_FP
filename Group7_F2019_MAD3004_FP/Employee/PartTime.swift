//
//  PartTime.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class PartTime: Employee 

{
    
    var rate : Float?
    var hoursworked : Int?
    
    // init function
    init(employeeID: Int, employeeName: String, employeeAge: Int, rate: Float,hoursworked: Int) {
        super.init(employeeID: employeeID, employeeName: employeeName, employeeAge: employeeAge)
        self.rate=rate
        self.hoursworked=hoursworked
    }
    
    
    
}
