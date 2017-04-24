//
//  GameScene2.swift
//  CS:GO Map layout
//
//  Created by Student on 2017-04-20.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit
import Cocoa


// Create the new GameScene

class GameScene2 : SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        
        // change the size of the GameScene
    
        
        // display the map which was selected by the user 

        var MapChosen = SKSpriteNode()
        MapChosen = MapSelected
        MapChosen.position = CGPoint(x: 250, y: 250)
        MapChosen.size = CGSize(width: 2000, height: 2000)
        
        addChild(MapChosen)
    }
}
