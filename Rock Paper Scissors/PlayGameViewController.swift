//
//  PlayGameViewController.swift
//  Rock Paper Scissors
//
//  Created by Evan Amstutz on 9/17/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

var whoWins: String!
var winNum: Int!
var Winner: String!


class PlayGameViewController: UIViewController {
   
    //declares all of the image views
    @IBOutlet weak var topLeft: UIImageView!
    @IBOutlet weak var topCenter: UIImageView!
    @IBOutlet weak var topRight: UIImageView!
    @IBOutlet weak var bottomLeft: UIImageView!
    @IBOutlet weak var bottomCenter: UIImageView!
    @IBOutlet weak var bottomRight: UIImageView!
    var player1Choice: String!
    var player2Choice: String!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player1: UILabel!
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidLoad()
        
        //images cut from advisoranalyst.com
        topLeft.image = UIImage(named: "rock.jpeg")
        topCenter.image = UIImage(named: "paper.jpeg")
        topRight.image = UIImage(named: "scissors.jpeg")
        bottomLeft.image = UIImage(named: "rock.jpeg")
        bottomCenter.image = UIImage(named: "paper.jpeg")
        bottomRight.image = UIImage(named: "scissors.jpeg")
        player1Choice = "  "
        player2Choice = "  "
        player1.text = player1Name
        player2.text = player2Name
    }
    
        

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //tap gestures set the choices to appropriate strings
    @IBAction func player2Rock(sender: AnyObject) {
        player2Choice = "rock"
    }
    
    @IBAction func player2Paper(sender: AnyObject) {
        player2Choice = "paper"
    }
    
    @IBAction func player2Scissors(sender: AnyObject) {
        player2Choice = "scissors"
    }
    
    
    @IBAction func player1Rock(sender: AnyObject) {
        player1Choice = "rock"
    }
    
    @IBAction func player1Paper(sender: AnyObject) {
        player1Choice = "paper"
    }
    
    @IBAction func player1Scissors(sender: AnyObject) {
        player1Choice = "scissors"
    }
    
    
    
    //button determins winner
    @IBAction func shoot(sender: AnyObject) {
        if (player1Choice == "rock" && player2Choice == "scissors") {
            whoWins = "\(player1Name) wins!!"
            Winner = player1Name
        }
        
        else if (player1Choice == "paper" && player2Choice == "rock") {
            whoWins = "\(player1Name) wins!!"
            Winner = player1Name

        }
        
        else if (player1Choice == "scissors" && player2Choice == "paper") {
            whoWins = "\(player1Name) wins!!"
            Winner = player1Name

        }
        
        else if (player2Choice == "rock" && player1Choice == "scissors") {
            whoWins = "\(player2Name) wins!!"
            Winner = player2Name

        }
            
        else if (player2Choice == "paper" && player1Choice == "rock") {
            whoWins = "\(player2Name) wins!!"
            Winner = player2Name
        }
            
        else if (player2Choice == "scissors" && player1Choice == "paper") {
            whoWins = "\(player2Name) wins!!"
            Winner = player2Name
        }
        
        else {
            whoWins = "Its a tie!"
            Winner = "Tie between \(player1Name) and \(player2Name)"
        }
        
        if names == nil {
            names = [Winner]
            scores = [1]
        }
        
        //saves names and scores of winner
        else if names.contains(Winner) {
            let WinnerIndex = names.indexOf(Winner)
            let ScoresOfWinner = scores [WinnerIndex!]
            
            names.removeAtIndex(WinnerIndex!)
            scores.removeAtIndex(WinnerIndex!)
            
            names.append(Winner)
            scores.append(ScoresOfWinner + 1)
        }else{
            names.append(Winner)
            scores.append(1)
        }
        
        //saves names and scores permanently
        NSUserDefaults.standardUserDefaults().setObject(names, forKey: "namesArray")
        NSUserDefaults.standardUserDefaults().setObject(scores, forKey: "scoresArray")
        }
    }
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


