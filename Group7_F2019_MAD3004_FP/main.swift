//
//  main.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")
print("my project")

var objEmp = Employee(employeeID: 2, employeeName: "Rizul", employeeAge: 25)

objEmp.displayData()

var objPart = PartTime(employeeID: 2, employeeName: "Anmol", employeeAge: 23, rate: 343.43, hoursworked: 25)

var objectEmp = Employee(employeeID: 2, employeeName: "Rizul", employeeAge: 25)

var objPart1 = CommisionBasedPartTime(employeeID: 2, employeeName: "Anmol", employeeAge: 23, rate: 20, hoursworked: 25, commisionPercentage: 10)
objPart1.displayData()

var objPart2 = FixedBasedPartTime(employeeID: 2, employeeName: "Anmol", employeeAge: 23, rate: 20, hoursworked: 25, fixedAmount: 500)
objPart2.displayData()


//new branch

