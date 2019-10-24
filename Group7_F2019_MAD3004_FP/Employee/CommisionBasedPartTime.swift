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

    
    
//    init(employeeID: Int, employeeName: String, employeeAge: Int, rate: Float, hoursworked: Int, commisionPercentage : Int) {
//        super.init(employeeID: employeeID, employeeName: employeeName, employeeAge: employeeAge, rate: rate, hoursworked: hoursworked)
//        self.commisionPercentage=commisionPercentage
//    }
    func commissionBasedPT(commisionDict : [String : Any],object : CommisionBasedPartTime) {
       
        if let empRate = commisionDict["rate"] as? Float
            
        {
            
            object.rate=empRate
            
        }
        
        if let empHours = commisionDict["hoursWorked"] as? Int
            
        {
            
            object.hoursworked=empHours
            
        }
        
        if let empCommision = commisionDict["commissionPercent"] as? Int
            
        {
            
            object.commisionPercentage=empCommision
            
        }
    }
    
    
    
    
    
    
    // function override to display data

     override func displayData() {
        super.displayData()
        print("Employee is Part Time/Commision Based")
        print("    -   Rate :  \(rate!.insertCurrency())")
        print("    -   Hours Worked : \(hoursworked!.insertHours())")
        print("    -   Comission : \(commisionPercentage!)")
        print("    -   Total Earnings : \(totalSalary.insertCurrency())")
        print("         ")
        print("    ** CALCULATION **")
        print("         ")
        print( "\(hoursworked!.insertHours()) * \(rate!.insertCurrency()) * \(commisionPercentage!) / 100 = \(totalSalary.insertCurrency()))")
        print("     ")
        
        //super.vehicle.displayData()


        
    }
  
}
