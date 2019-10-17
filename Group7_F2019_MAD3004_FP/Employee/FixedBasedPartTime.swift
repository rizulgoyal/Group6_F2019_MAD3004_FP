//
//  FixedBasedPartTime.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime

{
    var fixedAmount : Int?
    var totalSalary : Float
    {
        let basicSalary = Float (hoursworked!) * rate!
        return Float(fixedAmount!)+basicSalary
    }
    
    init(employeeID: Int, employeeName: String, employeeAge: Int, rate: Float, hoursworked: Int, fixedAmount : Int) {
        super.init(employeeID: employeeID, employeeName: employeeName, employeeAge: employeeAge, rate: rate, hoursworked: hoursworked)
        self.fixedAmount=fixedAmount
    }
    
    
    
    override func displayData() {
        super.displayData()
        print("The Payrate is : \(rate!)")
        print("The Hours Worked are : \(hoursworked!)")
        print("The Fixed Amount is : \(fixedAmount!)")
        print("The Total Salary is : \(totalSalary)")
        
    }
    
}
