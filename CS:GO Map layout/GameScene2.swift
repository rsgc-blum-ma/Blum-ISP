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
        MapChosen.size = CGSize(width: 2060, height: 1538)
        MapChosen.zPosition = -1
        
        addChild(MapChosen)
        
        
        var returnButton = SKSpriteNode()
        returnButton = SKSpriteNode(imageNamed: "ReturnKey")
        returnButton.position = CGPoint(x: 1860, y: 1600)
        returnButton.size = CGSize(width: 350, height: 240)
        returnButton.name = "Return"
        returnButton.zPosition = 10
        self.addChild(returnButton)
        
        var smokeButton = SKSpriteNode()
        smokeButton = SKSpriteNode(imageNamed: "Smoke")
        smokeButton.position = CGPoint(x: 100, y: 1700)
        smokeButton.size = CGSize(width: 300, height: 300)
        smokeButton.zPosition = 11
        smokeButton.name = "Smoke"
        self.addChild(smokeButton)
        
    }
    
    
    
    
    override func mouseDown(with event: NSEvent) {
        
        var smokeGrenade = SKSpriteNode()
        smokeGrenade = SKSpriteNode(imageNamed: "SmokeGrenade")
        smokeGrenade.size = CGSize(width: 50, height: 50)
        smokeGrenade.position = CGPoint(x: 50, y: 50)
        smokeGrenade.zPosition = 12
        smokeGrenade.name = "SmokeGrenade"
        
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
            
            if node.name == "Smoke" {
                
                if node.contains(event.location(in: self)) {
                    
                    addChild(smokeGrenade)
                    
                }
                
            }
        }
    }
}
