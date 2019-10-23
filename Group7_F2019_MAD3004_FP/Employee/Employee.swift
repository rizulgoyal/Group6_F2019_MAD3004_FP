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
    var vehicle = Vehicle()
    
    
    
    
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
    
    func checkVehicle(vehicleDict: [String:Any])
        
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
            
        else {
            
            
            
            print("The employee vehicle type doesnot match")
            
        }
        
    }
    
    
    override func displayData() {
        
        print("Employee ID : \(self.employeeID!)")
        print("Employee Name : \(self.employeeName!)")
        print("Employee Birth Year : \(birthYear)")
        
        
        
        
        

    }
    
}
