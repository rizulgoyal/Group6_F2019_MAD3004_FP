//
//  FullTime.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by Anmol Sharma on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class FullTime: Employee {
    
    var salary :Float?
    var bonus :Float?
    var totalsalary :Float?
    {
        let temp = salary! + bonus!
        return Float(temp)
        
    }
    
    //override method
    override func displayData() {
        super.displayData()
    }
   
}
