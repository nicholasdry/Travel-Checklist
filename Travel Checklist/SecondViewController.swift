//
//  SecondViewController.swift
//  Travel Checklist
//
//  Created by Nicholas Dry on 2/24/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    // ! declares a variable but says we wont declare yet
    @IBOutlet var itemText: UITextField!
    @IBOutlet var itemCost: UITextField!
    
    // Given Methods:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // My Methods

    @IBAction func buttonAddTask(sender: UIButton) {
        travelList.addItem(itemText.text!, cost: itemCost.text!);
        self.view.endEditing(true)
        
        // empty text boxes
        itemText.text = ""
        itemCost.text = ""
        
        // jumps you back to first view
        self.tabBarController?.selectedIndex = 0;
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder(); // will get rid of the keyboard
        
        return true
    }
    
}

