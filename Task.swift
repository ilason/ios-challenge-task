//
//  Entity.swift
//  ios-challenge-task1
//
//  Created by Aaron Eliason on 4/15/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
import CoreData


class Task: NSManagedObject {

    convenience init(name: String, notes: String? = nil, due: NSDate? = nil, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Task", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        self.name = name
        self.notes = notes
        self.due = due
        self.isComplete = false
    }

}
