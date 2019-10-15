//
//  Employee.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Employee
{
    
    var employeeID : Int?
    var employeeName : String?
    var employeeAge : Int?
    var currentYear : Int = 2019
    
    var birthYear : Int{
        return self.employeeAge!-currentYear
    }

}
