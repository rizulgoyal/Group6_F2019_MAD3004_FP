//
//  Intern.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Rizul goyal on 2019-10-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Intern:Employee
{
    
    var schoolName : String?
    var totalSalary : Float?
    
    
    func internDetails(internDict : [String:Any],object : Intern) {
         if let empSchool = internDict["schoolName"] as? String
                               
                           {
                               
                               object.schoolName=empSchool
                               
                           }
                           
                           if let empSalary = internDict["salary"] as? Float
                               
                           {
                               
                               object.totalSalary=empSalary
                               
                           }
    }
    
    // function override to display data

    override func displayData() {
        super.displayData()
        print("The Employee is Intern")
        print("The School Name is : \(schoolName!)")
        print("The Salary is : \(totalSalary!.insertCurrency())")
        //super.vehicle.displayData()
    }
    
}
