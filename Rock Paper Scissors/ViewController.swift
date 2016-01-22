//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Evan Amstutz on 9/14/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func howToPlay(sender: AnyObject) {
        
        //alert gives the rules
        let alertController = UIAlertController(title: "How To Play", message:
            "Welcome to Rock Paper Scissors! The object of the game is to beat your opponent by choosing one of three choices. Pick rock and you beat scissors but you lose to paper. Choose paper and you beat rock but lose to scissors. Pick scissors and you defeat paper but fall to rock! Tap on the pictures to make your selection then click 'shoot!'. If one of the players does not select a picture there will be a tie.", preferredStyle: UIAlertControllerStyle.Alert)
        //sets up alert
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

