//
//  Entity+CoreDataProperties.swift
//  ios-challenge-task1
//
//  Created by Aaron Eliason on 4/15/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Entity {

    @NSManaged var name: String?
    @NSManaged var due: NSDate?
    @NSManaged var isComplete: NSNumber?
    @NSManaged var notes: String?

}
