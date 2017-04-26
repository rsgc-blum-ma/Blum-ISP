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
    
    var lastButtonPressed : String = ""
    
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
        
        var molotovButton = SKSpriteNode()
        molotovButton = SKSpriteNode(imageNamed: "Molotov")
        molotovButton.position = CGPoint(x: 400, y: 1700)
        molotovButton.size = CGSize(width: 300, height: 300)
        molotovButton.zPosition = 13
        molotovButton.name = "Molotov"
        self.addChild(molotovButton)
        
    
        
    }
    
    
    
    
    override func mouseDown(with event: NSEvent) {
        
        // create the images which each button will create
        
        var smokeGrenade = SKSpriteNode()
        smokeGrenade = SKSpriteNode(imageNamed: "SmokeGrenade")
        smokeGrenade.size = CGSize(width: 75, height: 60)
        smokeGrenade.zPosition = 12
        smokeGrenade.name = "SmokeGrenade"
        
        var molotovGrenade = SKSpriteNode()
        molotovGrenade = SKSpriteNode(imageNamed: "molotovGrenade")
        molotovGrenade.size = CGSize(width: 75, height: 60)
        molotovGrenade.zPosition = 12
        molotovGrenade.name = "molotovGrenade"
        
        var selectionSquare = SKShapeNode()
        selectionSquare = SKShapeNode(rectOf: CGSize(width: 245, height: 320))
        selectionSquare.position = CGPoint(x: 10, y: 1500)
        selectionSquare.zPosition = 12
        selectionSquare.lineWidth = 10
        selectionSquare.strokeColor = NSColor.black
        selectionSquare.fillColor = .clear
        selectionSquare.name = "Square"

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
            
            // check to see if Smoke was the last selected hitbox
            
            if node.name == "Smoke" {
                
                if node.contains(event.location(in: self)) {
                    
                    lastButtonPressed = node.name!
                    
                    
                }
                
            }
            
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "Smoke" {
                
                
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1500 {
                    smokeGrenade.position = CGPoint(x: (event.location(in: self).x), y: (event.location(in: self).y))
                    print("Smoke")
                    self.addChild(smokeGrenade)
                }
                                selectionSquare.position = CGPoint(x: 115, y: 1670)
                                self.addChild(selectionSquare)
            }
            
            if node.name == "Molotov" {
                
                if node.contains(event.location(in: self)) {
                    
                    lastButtonPressed = node.name!
                    
                    
                }
                
            }
            
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "Molotov" {
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1500 {
                    molotovGrenade.position = CGPoint(x: (event.location(in: self).x), y: (event.location(in: self).y))
                    print("Molotov")
                    self.addChild(molotovGrenade)
                }
                
                selectionSquare.position = CGPoint(x: 370, y: 1670)
                self.addChild(selectionSquare)
            }
        }
    }
}

