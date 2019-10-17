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

func readJsonFile(jsonFileName: String)
{
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else{
        return
    }
    
    guard let data = try? Data(contentsOf: jsonData) else {
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        return
    }


    var empObject = Employee()
    
   if let jsonDictionay = json as? [String: Any]
   {
    
//    for (key,value) in jsonDictionay
//    {
        if let empID = jsonDictionay["id"] as? Int
       {
           print(empID)
        empObject.employeeID=empID
       }
    if let empName = jsonDictionay["name"] as? String
    {
    print(empName)
        empObject.employeeName=empName
    }
    if let empAge = jsonDictionay["age"] as? Int
    {
    print(empAge)
        empObject.employeeAge=empAge
    }
    empObject.displayData()
}
//    }
    
    var ftime : FullTime
     ftime = FullTime()
    
    if let jsonDictionay = json as? [String: Any]
       {
        let emptype = jsonDictionay["type"] as? String
        if  emptype == "FullTime"
        {
            if let empID = jsonDictionay["id"] as? Int
           {
            ftime.employeeID=empID
           }
        if let empName = jsonDictionay["name"] as? String
        {
            ftime.employeeName=empName
        }
        if let empAge = jsonDictionay["age"] as? Int
        {
            ftime.employeeAge=empAge
        }
        if let empSalary = jsonDictionay["salary"] as? Float
        {
            ftime.salary=empSalary
        }
        if let empbonus = jsonDictionay["bonus"] as? Float
        {
            ftime.bonus=empbonus
        }
        ftime.displayData()
        }
        else
        {
            print("it doesnot match the type ")
        }

    }
        
    
}

readJsonFile(jsonFileName: "InfoSingle")
