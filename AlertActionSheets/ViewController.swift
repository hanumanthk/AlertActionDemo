//
//  ViewController.swift
//  AlertActionSheets
//
//  Created by iOS Training on 12/18/18.
//  Copyright © 2018 iOS Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK:- Action Methods
    @IBAction func onClickOfYesNoAlert(_ sender: Any) {
        let alertController = UIAlertController.init(title: "YesNoAlert", message: "Hey, This is Yes, No alert.", preferredStyle: .alert)
        let yesAction = UIAlertAction.init(title: "Yes", style: .default) { (action) in
            print("Hey, You clicked Yes Button")
        }
        
        let noAction = UIAlertAction.init(title: "No", style: .destructive) { (noAction) in
            print("Hey, You clicked No button")
        }
        
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func onClickOfAlertTextField(_ sender: Any) {
        let alertController = UIAlertController.init(title: "Please enter your name", message: "Hey, This is  alert with textfield.", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "Ok", style: .default) { (action) in
            print("Hey, You clicked Ok Button")
            print("You entered text is - \(alertController.textFields?[0].text ?? "")")
        }
        
        alertController.addAction(okAction)
        
        alertController.addTextField { (textField) in
            textField.textColor = UIColor.red
            textField.placeholder = "Enter username"
        }
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func onClickOfActionSheet(_ sender: Any) {
        let alertController = UIAlertController.init(title: "Action Sheet", message: "Please select below option", preferredStyle: .actionSheet)
        
        let oneAction = UIAlertAction.init(title: "One", style: .default) { (oneAction) in
            
        }
        
        let twoAction = UIAlertAction.init(title: "Two", style: .destructive, handler: {
            (twoAction) in
        })
        
        let dismissAction = UIAlertAction.init(title: "Dismiss", style: .cancel) { (dismissAction) in
            
        }
        
        alertController.addAction(oneAction)
        alertController.addAction(twoAction)
        alertController.addAction(dismissAction)
        
        self.present(alertController, animated: true) {
            
        }
    }
    

}

