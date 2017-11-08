//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Jakub Majewski on 08.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate() //This is the time of create item
    }
}
