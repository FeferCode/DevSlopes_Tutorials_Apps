//
//  Wage.swift
//  window-shopper
//
//  Created by Jakub Majewski on 29.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
