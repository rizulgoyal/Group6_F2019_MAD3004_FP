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
    var salary : Float?
    
    override func displayData() {
        super.displayData()
        print("The Employee is Intern")
        print("The School Name is : \(schoolName!)")
        print("The Salary is : \(salary!)")
        
        //test
    }
    
}
