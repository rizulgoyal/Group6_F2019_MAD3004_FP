//
//  CommisionBasedPartTime.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class CommisionBasedPartTime : PartTime
{
    var commisionPercentage : Int?
    var totalSalary : Float
    {
        let basicSalary = Float (hoursworked!) * rate!
        let commisionDollars =  basicSalary * Float(commisionPercentage!)/100
        return commisionDollars+basicSalary
    }

    
    
    init(employeeID: Int, employeeName: String, employeeAge: Int, rate: Float, hoursworked: Int, commisionPercentage : Int) {
        super.init(employeeID: employeeID, employeeName: employeeName, employeeAge: employeeAge, rate: rate, hoursworked: hoursworked)
        self.commisionPercentage=commisionPercentage
    }
    

    override func displayData() {
        super.displayData()
        print("The Employee is Part Time/Commision Based")
        print("The Payrate is : \(rate!)")
        print("The Hours Worked are : \(hoursworked!)")
        print("The percentage comission is : \(commisionPercentage!)")
        print("The Total Salary is : \(totalSalary)")


        
    }
  
}
