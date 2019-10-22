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
    
    //override method
    override func displayData() {
        super.displayData()
        print("The Employee is Full Time")
               print("The Salary is : \(salary!.insertCurrency())")
               print("The Bonus is : \(bonus!.insertCurrency())")
               print("The Total Salary is : \(totalsalary.insertCurrency())")
    }
   
}
