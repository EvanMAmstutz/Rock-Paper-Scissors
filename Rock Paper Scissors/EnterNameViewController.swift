//
//  EnterNameViewController.swift
//  Rock Paper Scissors
//
//  Created by Evan Amstutz on 9/17/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

//universal strings declared on this view
var player1Name: String!
var player2Name: String!
let name = NSUserDefaults.standardUserDefaults()

class EnterNameViewController: UIViewController {

    //labels
    @IBOutlet weak var player1Field: UITextField!
    @IBOutlet weak var player2Field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //sets the names of the players
    @IBAction func submit(sender: AnyObject) {
        player1Name = player1Field.text
        player2Name = player2Field.text
        
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
