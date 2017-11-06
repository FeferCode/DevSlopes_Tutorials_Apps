//
//  Category.swift
//  coder-swag
//
//  Created by Jakub Majewski on 30.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//private(set)??
//This variables cannot be set from outside classes


import Foundation

struct Category {
    private(set) var title:String
    private(set) var imageName:String
    
    init(title:String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
}
