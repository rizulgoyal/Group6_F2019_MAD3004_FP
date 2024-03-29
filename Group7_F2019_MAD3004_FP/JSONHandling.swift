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
                    
                    // calling function to add full time employee basic details
                    ftime.basicDetails(employeeDict: jsonDictionay, object: ftime)
                    
                    // calling function to add full time employee particular details

                    ftime.fullTimeDetails(fullTimeDict: jsonDictionay, object: ftime)
                    
                    
                    
                    // calling function to add employee vehicle details

                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        ftime.vehicle = ftime.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                        
                    // adding customer to the dictionary
                    
                    customerDic.updateValue(ftime, forKey: ftime.employeeID!)
                    
                    
                }
                    
                    
                    
                else if emptype == "PartTime / Fixed Amount"
                    
                {
                    
                    var fixedparttime : FixedBasedPartTime
                    
                    fixedparttime=FixedBasedPartTime()
                    
                    
                    // calling function to add fixed part time employee basic details

                    fixedparttime.basicDetails(employeeDict: jsonDictionay, object: fixedparttime)
                    
                    // calling function to add fixed part time employee particular  details

                    fixedparttime.fixedTimeDetails(fixedBasedPTDict: jsonDictionay, object: fixedparttime)
                    
                    
                    // calling function to add employee vehicle details
 
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                        fixedparttime.vehicle = fixedparttime.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                        
                  
                    // adding customer to the dictionary

                    customerDic.updateValue(fixedparttime, forKey: fixedparttime.employeeID!)

                    
                    
                    
                    
                    
                }
                    
                    
                    
                else if emptype == "PartTime / Commissioned"
                    
                {
                    
                    var commisiomnparttime : CommisionBasedPartTime
                    
                    commisiomnparttime=CommisionBasedPartTime()
                    
                    
                    // calling function to add commision part time employee basic details

                    commisiomnparttime.basicDetails(employeeDict: jsonDictionay, object: commisiomnparttime)
                    
                    // calling function to add commision part time employee particular details

                    
                    commisiomnparttime.commissionBasedPT(commisionDict: jsonDictionay, object: commisiomnparttime)
                    
                    
                    // calling function to add employee vehicle details

                    
                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                        commisiomnparttime.vehicle = commisiomnparttime.checkVehicle(vehicleDict: vehicleDict)!
                        
                        
                    }
                    
                    // adding customer to the dictionary

                    
                    customerDic.updateValue(commisiomnparttime, forKey: commisiomnparttime.employeeID!)

                    
                    
                    
                    
                    
                }
                    
                    
                    
                else if emptype == "Intern"
                    
                {
                    
                    var intern : Intern
                    
                    intern=Intern()
                    
                    
                    // calling function to add intern part time employee basic details

                    intern.basicDetails(employeeDict: jsonDictionay, object: intern)
                    
                    // calling function to add intern part time employee particular  details

                    intern.internDetails(internDict: jsonDictionay, object: intern)
                   
                    
                    // calling function to add employee vehicle details

                    if let vehicleDict = jsonDictionay["vehicle"] as? Dictionary<String,Any>
                        
                    {
                        
                       intern.vehicle = intern.checkVehicle(vehicleDict: vehicleDict)!
                        
                    }
                    
                    // adding customer to the dictionary

                
                    
                    customerDic.updateValue(intern, forKey: intern.employeeID!)

                    
                    
                    
                    
                    
                }
                    
              
                
                
                
                
                
                
                
                
                
                
            }
            
        }
        
       
        // loop through dictionary to print
        for i in customerDic.values
        {
            i.displayData()
        
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
}
