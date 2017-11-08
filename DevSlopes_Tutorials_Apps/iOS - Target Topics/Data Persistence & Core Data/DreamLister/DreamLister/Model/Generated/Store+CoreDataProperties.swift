//
//  Store+CoreDataProperties.swift
//  DreamLister
//
//  Created by Jakub Majewski on 08.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//

import Foundation
import CoreData


extension Store {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Store> {
        return NSFetchRequest<Store>(entityName: "Store")
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: NSSet?
    @NSManaged public var toItem: Item?

}

// MARK: Generated accessors for toImage
extension Store {

    @objc(addToImageObject:)
    @NSManaged public func addToToImage(_ value: Image)

    @objc(removeToImageObject:)
    @NSManaged public func removeFromToImage(_ value: Image)

    @objc(addToImage:)
    @NSManaged public func addToToImage(_ values: NSSet)

    @objc(removeToImage:)
    @NSManaged public func removeFromToImage(_ values: NSSet)

}
