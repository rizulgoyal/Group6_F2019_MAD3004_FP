//
//  Extemnsion_Int.swift
//  Group7_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension Int
{
    func insertHours() -> String
    {
        return "\(self) Hours"
    }
    func insertDollar()-> String
    {
        return String.init(format: "$ %0.2f", self)
    }
}
