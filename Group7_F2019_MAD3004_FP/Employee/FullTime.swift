//
//  FullTime.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class FullTime: Employee {
    //variables declarationm
    var salary :Float?
    var bonus :Float?
    var totalsalary :Float
    {
        let temp = salary! + bonus!
        return Float(temp)
        
    }
    
    // function to pass value from json
    func fullTimeDetails(fullTimeDict : [String:Any] ,object : FullTime )
       {
           if let empsalary = fullTimeDict["salary"] as? Float
           
           {
               object.salary = empsalary
           }
           if let empBonus = fullTimeDict["bonus"] as? Float
           {
               object.bonus = empBonus
           }
    
    // function override to display data
        func displayData() {
        super.displayData()
        print("The Employee is Full Time")
               print("The Salary is : \(salary!.insertCurrency())")
               print("The Bonus is : \(bonus!.insertCurrency())")
               print("The Total Salary is : \(totalsalary.insertCurrency())")
        //super.vehicle.displayData()
    }
   
}
}
