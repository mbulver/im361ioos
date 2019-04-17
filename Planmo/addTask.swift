//
//  addTask.swift
//  Planmo
//
//  Created by Maxwell Bulver on 4/15/19.
//  Copyright © 2019 Maxwell Bulver. All rights reserved.
//

import Foundation
import UIKit

class addTask: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didAddTask(_ sender: Any) {
        let alert = UIAlertController(title: "Create Task", message: "Add this task to your schedule?", preferredStyle: .alert)
        

        // create a default action
        let action1 = UIAlertAction(title: "Add", style: .default) { _ in
            // this code will be run when the user picks "Hello"
            print("Add was clicked")
        }
        // create a cancel action
        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            // this code will be run when the user picks "Cancel"
            print("action was cancelled")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        
        present(alert,
                animated: true) {
                    // this code will run after the alert is shown
                    print("alert was shown")
    }
    
}
}
