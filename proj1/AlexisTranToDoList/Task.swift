//
//  Task.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class Task {
    // MARK: Properties
    
    var task: String
    var date: NSDate
    var checked: Bool
    
    init?(task: String, date: NSDate, checked: Bool) {
        self.task = task
        self.date = NSDate()
        self.checked = checked
        if task.isEmpty {
            return nil
        }
    }
}
