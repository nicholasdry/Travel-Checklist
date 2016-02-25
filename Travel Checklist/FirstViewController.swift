//
//  FirstViewController.swift
//  Travel Checklist
//
//  Created by Nicholas Dry on 2/24/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var itmTBL: UITableView!
    @IBOutlet var listTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // updates the tasks when returning to view
    
    override func viewWillAppear(animated: Bool) {
        itmTBL.reloadData()
        listTotal.text = "$" + String(travelList.retTotal())
    }
    
    // adds the delete capability
    // UITABLEVIEW FUNCTIONS
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // we are given this index
            travelList.items.removeAtIndex(indexPath.row)
            // has it run through the functions and return the new tasks
            itmTBL.reloadData()
        }
        
        
        
    }
    
    // UI Table View Data Source
    // WE NEED TO HAVE THESE FUNCTIONS
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // this function tells us how many rows we need to enter
        
        return travelList.items.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Updates place in array
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        // assigns the view to have the name of the task and the description in the title
        cell.textLabel?.text = travelList.items[indexPath.row].name
        cell.detailTextLabel?.text = "$" + travelList.items[indexPath.row].cost
        
        return cell
        
    }
    
}

