//
//  AppleProduct.swift
//  IntroToMVC
//
//  Created by Jakub Majewski on 06.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//Public variables but with private setters

import Foundation

class AppleProduct {
    public private(set) var name:String
    public private(set) var color:String
    public private(set) var price:Double
    
    init(name: String, color:String, price:Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}
