//
//  taskTableView.swift
//  Planmo
//
//  Created by Maxwell Bulver on 4/17/19.
//  Copyright © 2019 Maxwell Bulver. All rights reserved.
//

import Foundation
import UIKit

class taskTableViewController: UITableViewController {
    
    let data = [
        Task(type: "Mandatory", priority: "Low !", dueDate: 8)
    ]
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView,
                         cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskViewCell") as? TaskViewCell else {
            fatalError("No cell availible")
        }
        
        let task = data[indexPath.row]
        
        cell.FirstLabel.text = task.type
        cell.SecondLabel.text = task.priority
        cell.ThirdLabel.text = "\(task.dueDate)"
        
        return cell
    }
}
