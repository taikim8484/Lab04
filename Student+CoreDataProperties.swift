//
//  Student+CoreDataProperties.swift
//  Lab-04
//
//  Created by kimhuutai on 4/16/18.
//  Copyright © 2018 kimhuutai. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student");
    }

    @NSManaged public var name: String?
    @NSManaged public var gender: Bool
    @NSManaged public var birthday: NSDate?
    @NSManaged public var classname: String?
    @NSManaged public var otherinfo: String?

}
