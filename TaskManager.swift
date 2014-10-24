//
//  TaskManager.swift
//  Animal Rescue
//
//  Created by Joel Yek on 10/8/14.
//  Copyright (c) 2014 Joel Yek. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Unnamed"
    var desc = "UnDescribed"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
    
}
