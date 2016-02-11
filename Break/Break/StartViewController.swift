//
//  StartViewController.swift
//  Break
//
//  Created by Alex Oh on 10/8/15.
//  Copyright © 2015 Alex Oh. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    
    @IBAction func play(sender: AnyObject) {
        
        let gameVC = GameViewController()
        
        // navigation controller has an array of viewControllers, everytime we push an object we are adding it to the array
        // gameViewController is replacing the default startViewController
        // there's no reason to go back to StartViewController
        
        navigationController?.viewControllers = [gameVC]
        
    }
    
    @IBOutlet weak var topScoreLabel: UILabel!
    
    override func viewDidLoad() {
        
        let topScore = GameData.mainData().topScore
        
        topScoreLabel.text = String(topScore)
        
    }
    
}