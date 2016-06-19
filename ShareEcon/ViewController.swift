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
    var data = ["Shovel"]
    
    
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
            data.append("Dicks")
            tableView.reloadData()
        }
        else if(tabControll.selectedSegmentIndex == 1){
        
        textLabel.text = "Share"
        tableView.hidden = false
        }
    }


}

