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
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
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
        
        
        
    }
    
}

