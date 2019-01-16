//
//  ViewController.swift
//  appFour
//
//  Created by Laura Quinn on 2019-01-14.
//  Copyright © 2019 Laura Quinn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
   
    
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
       
        let rightRandomNumber = arc4random_uniform(13) + 2
       
        
        
        //change image views
       leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
           leftScore += 1
            leftScoreLabel.text = String(leftScore)
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
        
        
    }
    
}

