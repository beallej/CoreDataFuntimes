//
//  Cat+CoreDataProperties.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/30/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Cat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cat> {
        return NSFetchRequest<Cat>(entityName: "Cat");
    }

    @NSManaged public var name: String?
    @NSManaged public var photoName: String?
    @NSManaged public var toys: NSSet?

}

// MARK: Generated accessors for toys
extension Cat {

    @objc(addToysObject:)
    @NSManaged public func addToToys(_ value: Toy)

    @objc(removeToysObject:)
    @NSManaged public func removeFromToys(_ value: Toy)

    @objc(addToys:)
    @NSManaged public func addToToys(_ values: NSSet)

    @objc(removeToys:)
    @NSManaged public func removeFromToys(_ values: NSSet)

}
