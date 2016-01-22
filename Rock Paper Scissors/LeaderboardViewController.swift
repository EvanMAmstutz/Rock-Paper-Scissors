//
//  LeaderboardViewController.swift
//  Rock Paper Scissors
//
//  Created by Evan Amstutz on 9/18/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

//arrays for data storage
var names: Array<String>!
var scores: Array<Int>!

class LeaderboardViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //permanently saves names
        if NSUserDefaults.standardUserDefaults().objectForKey("namesArray") != nil {
            names = NSUserDefaults.standardUserDefaults().objectForKey("namesArray") as! [String]
        }
        //permanenly saves scores
        if NSUserDefaults.standardUserDefaults().objectForKey("scoresArray") != nil {
            scores = NSUserDefaults.standardUserDefaults().objectForKey("scoresArray") as! [Int]
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //initiallizes table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //initializes cells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    //describes how to handle cells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)
        cell.textLabel?.text = "\(names[indexPath.row]) - \(scores[indexPath.row)"
        
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
