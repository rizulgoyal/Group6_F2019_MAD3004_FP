//

//  JSONHandling.swift

//  Group7_F2019_MAD3004_FP

//

//  Created by MacStudent on 2019-10-22.

//  Copyright © 2019 MacStudent. All rights reserved.

//



import Foundation



// function to read JSON File



class JSONHandling
    
{
    
    // function for reading file from resource
    
    
    
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
        
        
        var customerDic = [Int:Employee]()
        
        
        
        // storing in array for loop through all data
        
        guard let jsonArray = json as? [Any] else { return }
        
        
        
        for i in jsonArray
            
        {
            
            
            
            
            
            // storing data in dictionary
            
            if let jsonDictionay = i as? [String: Any]
                
            {
                
                
                
                
                
                
                
                
                
                // new object
                
                
                // checking type of employee and apply condition to create different object
                
                let emptype = jsonDictionay["type"] as? String
                
                if  emptype == "FullTime"
                    
                {
                    
                    var ftime : FullTime
                    
                    ftime = FullTime()
                    
                    ftime.basicDetails(employeeDict: jsonDictionay, object: ftime)
                    
                    if let empSalary = jsonDictionay["salary"] as? Float
                        
                    {
                        
                        ftime.salary=empSalary
                        
                    }
                    
                    if let empbonus = jsonDictionay["bonus"] as? Float
                        
                    {
                        
                        ftime.bonus=empbonus
                        
                    }
                    
                    
                    
                    
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        ftime.vehicle = ftime.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                        
                    
                    
                    customerDic.updateValue(ftime, forKey: ftime.employeeID!)
                    
                    
                }
                    
                    
                    
                else if emptype == "PartTime / Fixed Amount"
                    
                {
                    
                    var fixedparttime : FixedBasedPartTime
                    
                    fixedparttime=FixedBasedPartTime()
                    
                    
                    
                    fixedparttime.basicDetails(employeeDict: jsonDictionay, object: fixedparttime)
                    
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
                    
                    
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                        fixedparttime.vehicle = fixedparttime.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                        
                  
                    
                    customerDic.updateValue(fixedparttime, forKey: fixedparttime.employeeID!)

                    
                    
                    
                    
                    
                }
                    
                    
                    
                else if emptype == "PartTime / Commissioned"
                    
                {
                    
                    var commisiomnparttime : CommisionBasedPartTime
                    
                    commisiomnparttime=CommisionBasedPartTime()
                    
                    
                    
                    commisiomnparttime.basicDetails(employeeDict: jsonDictionay, object: commisiomnparttime)

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
                    
                    
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                        commisiomnparttime.vehicle = commisiomnparttime.checkVehicle(vehicleDict: vehicleDict)!
                        
                        
                    }
                    
                    
                    
                    customerDic.updateValue(commisiomnparttime, forKey: commisiomnparttime.employeeID!)

                    
                    
                    
                    
                    
                }
                    
                    
                    
                else if emptype == "Intern"
                    
                {
                    
                    var intern : Intern
                    
                    intern=Intern()
                    
                    
                    
                    intern.basicDetails(employeeDict: jsonDictionay, object: intern)

                    if let empSchool = jsonDictionay["schoolName"] as? String
                        
                    {
                        
                        intern.schoolName=empSchool
                        
                    }
                    
                    if let empSalary = jsonDictionay["salary"] as? Float
                        
                    {
                        
                        intern.totalSalary=empSalary
                        
                    }
                    
                    
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                       intern.vehicle = intern.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                    
                        
                
                    
                    customerDic.updateValue(intern, forKey: intern.employeeID!)

                    
                    
                    
                    
                    
                }
                    
              
                
                
                
                
                
                
                
                
                
                
            }
            
        }
        
       
        
        for i in customerDic.values
        {
            i.displayData()
        
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
}
