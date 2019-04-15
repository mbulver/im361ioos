//
//  ViewController.swift
//  Planmo
//
//  Created by Maxwell Bulver on 4/9/19.
//  Copyright © 2019 Maxwell Bulver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Button: UIButton!
    var isSegueAllowed = false
    
    @IBAction func didPressSwitch(_ sender: Any) {
        isSegueAllowed = !isSegueAllowed
    }
    @IBAction func didPressAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Hello World!", message: "This is an aler", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Hello", style: .default){_ in
            print("Hello was clicked")
        }
        let action2 = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("action was canceled")
        }
        let action3 = UIAlertAction(title: "DELETE", style: .destructive){_ in
            print("DELETE WAS CLICKED")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        present(alert,animated:true){
            print("alert was shown")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func shouldPerformSegue(withIdentifier indentifier: String, sneder: Any?)-> Bool{
            switch indentifier {
            case "addTask":
                print("going to add task")
              
                if isSegueAllowed{
                    return true
                } else {
                    return false
                }
                
            default:
                print("I don't know what's happening")
                return true
            }
        }
        // Do any additional setup after loading the view.
    }


}

