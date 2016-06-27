//
//  NewViewController.swift
//  TestInjectionXcode
//
//  Created by Anyuan on 6/20/16.
//  Copyright © 2016 Anyuan. All rights reserved.
//

import UIKit

class NewViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "myReuseType")

    }
}

extension NewViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myReuseType", forIndexPath: indexPath)
        cell.textLabel?.text = "row numbers \(indexPath.row)"
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .blueColor()
        } else {
            cell.backgroundColor = .yellowColor()
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("table view did select at \(indexPath.row)")
    }
}


