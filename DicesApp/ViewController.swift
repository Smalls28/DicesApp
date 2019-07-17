//
//  ViewController.swift
//  DicesApp
//
//  Created by SER-YCL17 on 7/11/19.
//  Copyright © 2019 SER-YCL17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet var Score1: UILabel!
    @IBOutlet var Score2: UILabel!
    @IBOutlet var LabelWhoWon: UILabel!
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
   var Score1v = 0
   var Score2v = 0
    
    
    @IBOutlet var DiceImage1: UIImageView!
    
    @IBOutlet var DiceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   }

  
    @IBAction func RollButton(_ sender: UIButton) {
   
    
        randomDiceIndex1 = Int(arc4random_uniform(5) )
    
        randomDiceIndex2 = Int(arc4random_uniform(5) )
        
   
        DiceImage1.image = UIImage(named:diceArray[randomDiceIndex1])
        
        DiceImage2.image = UIImage(named:diceArray[randomDiceIndex2])
        
        if (randomDiceIndex2 > randomDiceIndex1){
        //what you want it to show
            LabelWhoWon.text = " Player 2 won!  "
            Score2v += 1
            Score2.text = "\(Score2v)"

            
        }
        else if  (randomDiceIndex2 < randomDiceIndex1){
            LabelWhoWon.text = " Player 1 won"
            
            Score1v += 1
            Score1.text = "\(Score1v)"
        }
        
        else {
           LabelWhoWon.text = "Tied"
        }
        
       

        
        
        
        
    }
    
}

