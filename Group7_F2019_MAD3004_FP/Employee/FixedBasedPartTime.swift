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
    
//    init(employeeID: Int, employeeName: String, employeeAge: Int, rate: Float, hoursworked: Int, fixedAmount : Int) {
//        super.init(employeeID: employeeID, employeeName: employeeName, employeeAge: employeeAge, rate: rate, hoursworked: hoursworked)
//        self.fixedAmount=fixedAmount
//    }
    
    
    // function override to display data
    override func displayData() {
        super.displayData()
        print("Employee is Part Time/Fixed Amount Based")
        print("    -   Rate :  \(rate!.insertCurrency())")
        print("    -   Hours Worked : \(hoursworked!.insertHours())")
        print("    -   Fixed Amount : \(fixedAmount!.insertDollar())")
        print("    -   Total Earnings : \(totalSalary.insertCurrency())")
        super.vehicle.displayData()

        
    }
    
}
