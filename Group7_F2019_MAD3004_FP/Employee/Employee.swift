//
//  Employee.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Employee : Vehicle
{
    
    
    
    var employeeID : Int?
    var employeeName : String?
    var employeeAge : Int?
    var currentYear : Int = 2019
    
    
    var birthYear : Int{
        return self.currentYear-employeeAge!
    }

    
//    init(employeeID:Int,employeeName:String,employeeAge:Int) {
//        self.employeeID=employeeID
//        self.employeeName=employeeName
//        self.employeeAge=employeeAge
//    }
    
    func calcEarnings()
    {
        
    }
    
    
    override func displayData() {
        
        print("Employee ID : \(self.employeeID!)")
        print("Employee Name : \(self.employeeName!)")
        print("Employee Birth Year : \(birthYear)")
        
        
        
        

    }
    
}
