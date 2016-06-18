//
//  ViewController.swift
//  ShareEcon
//
//  Created by Martin L on 6/18/16.
//  Copyright © 2016 Martin L. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tabControll: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    let data = ["Shovel", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
        "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
        "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
        "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
        "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: nil)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changedTab(sender: UISegmentedControl) {

        if (tabControll.selectedSegmentIndex == 0){
        textLabel.text = "Borrow"
            tableView.hidden = true
            
            
            
        }
        else if(tabControll.selectedSegmentIndex == 1){
        
        textLabel.text = "Share"
        tableView.hidden = false
        }
    }


}

