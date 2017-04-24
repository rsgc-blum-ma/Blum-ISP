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
        MapChosen.position = CGPoint(x: 1022, y: 750)
        MapChosen.size = CGSize(width: 2040, height: 1538)
        
        addChild(MapChosen)
        
        var Return = SKSpriteNode()
        Return = SKSpriteNode(imageNamed: "ReturnKey")
        Return.position = CGPoint(x: 1010, y: 150)
        Return.size = CGSize(width: 500, height: 240)
        Return.name = "Return"
        self.addChild(Return)
    }
    override func mouseDown(with event: NSEvent) {
        
        // Iterate over all child nodes in the scene
        
        for node in self.children {
            
            if node.name == "Return" {
                
                // Only proceed when the mouse location is within the node clicked on
                
                if node.contains(event.location(in: self)) {
                    
                    MapSelected = SKSpriteNode()
                    
                    let GameScene2 = GameScene(size: size)
                    
                    // create an animation for the transition of scenes
                    
                    let reveal = SKTransition.doorsCloseHorizontal(withDuration: 0.5)
                    
                    // access the current view and present the new scene
                    
                    view?.presentScene(GameScene2, transition: reveal)
                }
                
            }
            
        }
}
}
