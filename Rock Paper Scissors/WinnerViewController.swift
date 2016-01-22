//
//  WinnerViewController.swift
//  Rock Paper Scissors
//
//  Created by Evan Amstutz on 9/18/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

class WinnerViewController: UIViewController {

    
    @IBOutlet weak var winnerBanner: UILabel!
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        //shows who wins
        winnerBanner.text = whoWins
    }
    
       
        

        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
