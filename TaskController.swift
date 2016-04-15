//
//  TaskController.swift
//  ios-challenge-task1
//
//  Created by Aaron Eliason on 4/15/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    static let sharedInstance = TaskController()
    
    var tasks: [Task] {
        let request = NSFetchRequest(entityName: "Task")
        do {
         return try Stack.sharedStack.managedObjectContext.executeFetchRequest(request) as! [Task]
        } catch {
            return []
        }
        
    }
    
    var completedTasks: [Task] {
        return tasks.filter({$0.isComplete.boolValue})
    }
    
    var inCompletedTasks: [Task] {
        return tasks.filter({!$0.isComplete.boolValue})
    }
    
    func addTask(task: Task) {
        
    }
    func removeTask(task: Task) {
        
        
    }
    
    func saveToPersistentStorage() {
        
    }
    
    
    
}
