//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Trieu Nguyen on 9/14/15.
//  Copyright (c) 2015 Trieu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let strings:[String] = ["item1", "item2", "item3", "item4"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.strings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Try to get a cell to reuse
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Tablecell") as! UITableViewCell
        
        // Set cell properties
        cell.textLabel!.text = self.strings[indexPath.row]
        
        // Return the cell
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        // User has selected a row

    }

}

