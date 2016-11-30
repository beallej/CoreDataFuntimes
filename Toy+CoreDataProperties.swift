//
//  Toy+CoreDataProperties.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/30/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Toy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Toy> {
        return NSFetchRequest<Toy>(entityName: "Toy");
    }

    @NSManaged public var name: String?
    @NSManaged public var cats: NSSet?

}

// MARK: Generated accessors for cats
extension Toy {

    @objc(addCatsObject:)
    @NSManaged public func addToCats(_ value: Cat)

    @objc(removeCatsObject:)
    @NSManaged public func removeFromCats(_ value: Cat)

    @objc(addCats:)
    @NSManaged public func addToCats(_ values: NSSet)

    @objc(removeCats:)
    @NSManaged public func removeFromCats(_ values: NSSet)

}
