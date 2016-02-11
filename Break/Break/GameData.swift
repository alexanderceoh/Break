//
//  GameData.swift
//  Break
//
//  Created by alex oh on 2/11/16.
//  Copyright © 2016 Alex Oh. All rights reserved.
//

import Foundation


private let _mainData = GameData()


class GameData: NSObject {
    
    
    class func mainData() -> GameData { return _mainData }
    
    var topScore = 0
    
    var currentScore = 0 {
        
        didSet {
            
            if currentScore > topScore { topScore = currentScore }
            
        }
        
    }
    
    var currentLevel = 0
    
    // levels = array of tuples where each tuple is made of 2 Int type values
    var levels: [(Int,Int)] = [
        
        (5,2),
        (8,2),
        (6,3),
        (9,3),
        (5,4),
        (8,4)
        
    ]
    
}