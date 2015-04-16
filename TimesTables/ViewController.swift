//
//  ViewController.swift
//  TimesTables
//
//  Created by Adnan Aziz on 4/16/15.
//  Copyright (c) 2015 Adnan Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func slidersMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 10)
    
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

