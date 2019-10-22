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


   
    guard let jsonArray = json as? [Any] else { return }
    
    for i in jsonArray
    {
    
   
    
    if let jsonDictionay = i as? [String: Any]
       {
        let emptype = jsonDictionay["type"] as? String
        if  emptype == "FullTime"
        {
            var ftime : FullTime
            ftime = FullTime()
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
        
        else if emptype == "PartTime / Fixed Amount"
        {
            var fixedparttime : FixedBasedPartTime
            fixedparttime=FixedBasedPartTime()
            
            if let empID = jsonDictionay["id"] as? Int
            {
                fixedparttime.employeeID=empID
            }
            if let empName = jsonDictionay["name"] as? String
            {
                fixedparttime.employeeName=empName
            }
            if let empAge = jsonDictionay["age"] as? Int
            {
                fixedparttime.employeeAge=empAge
            }
            if let empRate = jsonDictionay["rate"] as? Float
            {
                fixedparttime.rate=empRate
            }
            if let empHours = jsonDictionay["hoursWorked"] as? Int
            {
                fixedparttime.hoursworked=empHours
            }
            if let empFixedAmount = jsonDictionay["hoursWorked"] as? Int
            {
                fixedparttime.fixedAmount=empFixedAmount
            }
            fixedparttime.displayData()
            
            
        }
        
        else if emptype == "PartTime / Commissioned"
        {
            var commisiomnparttime : CommisionBasedPartTime
            commisiomnparttime=CommisionBasedPartTime()
            
            if let empID = jsonDictionay["id"] as? Int
            {
                commisiomnparttime.employeeID=empID
            }
            if let empName = jsonDictionay["name"] as? String
            {
                commisiomnparttime.employeeName=empName
            }
            if let empAge = jsonDictionay["age"] as? Int
            {
                commisiomnparttime.employeeAge=empAge
            }
            if let empRate = jsonDictionay["rate"] as? Float
            {
                commisiomnparttime.rate=empRate
            }
            if let empHours = jsonDictionay["hoursWorked"] as? Int
            {
                commisiomnparttime.hoursworked=empHours
            }
            if let empCommision = jsonDictionay["commissionPercent"] as? Int
            {
                commisiomnparttime.commisionPercentage=empCommision
            }
            commisiomnparttime.displayData()
            
        }
        
        else if emptype == "Intern"
        {
            var intern : Intern
            intern=Intern()
            
            if let empID = jsonDictionay["id"] as? Int
            {
                intern.employeeID=empID
            }
            if let empName = jsonDictionay["name"] as? String
            {
                intern.employeeName=empName
            }
            if let empAge = jsonDictionay["age"] as? Int
            {
                intern.employeeAge=empAge
            }
            if let empSchool = jsonDictionay["schoolName"] as? String
            {
                intern.schoolName=empSchool
            }
            if let empSalary = jsonDictionay["salary"] as? Float
            {
                intern.salary=empSalary
            }
            intern.displayData()
            
            
        }
        else {
            print("Type of employee doesnot match ")
        }
        
        
        

            // vehicle starts from here
            if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
            {
                let typecheck = vehicleDict["type"] as? String
                
                if typecheck == "Car"
                {
                var car : Car
                car = Car()
            
                if let make = vehicleDict["make"] as? String
                {
                    car.make=make
                }
                
                if let plate = vehicleDict["plate"] as? String
                {
                    car.plate=plate
                }
                
                if let type = vehicleDict["type"] as? String
                {
                    car.type=type
                }
                
                
                if let model = vehicleDict["model"] as? String
                {
                    car.model=model
                }
                if let insurance = vehicleDict["insurance"] as? Bool
                    {
                        car.insurance=insurance
                    }
                    car.displayData()
                }
                else if typecheck == "Motorcycle"
                {
                var motorcycle : Motorcycle
                motorcycle = Motorcycle()
                
                if let make = vehicleDict["make"] as? String
                {
                    motorcycle.make=make
                }
                
                if let plate = vehicleDict["plate"] as? String
                {
                    motorcycle.plate=plate
                }
                
                if let type = vehicleDict["type"] as? String
                {
                    motorcycle.type=type
                }
                    
                if let model = vehicleDict["model"] as? String
                {
                    motorcycle.model=model
                }
                if let insurance = vehicleDict["insurance"] as? Bool
                    {
                        motorcycle.insurance=insurance
                    }
                    motorcycle.displayData()
                }

                
            }
            else {
                
                print("The employee has no vehicle registered")
            }
        
        print("*******************************************")
            }
        }
    

    
        
    
}

readJsonFile(jsonFileName: "Info")
