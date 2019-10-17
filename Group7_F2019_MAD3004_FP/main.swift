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
    
   if let jsonDictionay = json as? [String: AnyObject]
   {
    for newDict in jsonDictionay
    {
        if let empID = newDict.value["id"] as? Int
       {
           print(empID)
        empObject.employeeID=empID
       }
        if let empName = newDict.value["name"] as? String
    {
    print(empName)
        empObject.employeeName=empName
    }
        if let empAge = newDict.value["age"] as? Int
    {
    print(empAge)
        empObject.employeeAge=empAge
    }
    empObject.displayData()
}
    }
}

readJsonFile(jsonFileName: "Info")
