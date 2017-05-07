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
    
    var XPos : CGFloat = -9999
    var YPos : CGFloat = -9999
    var lastButtonPressed : String = ""
    var selectionSquare = SKShapeNode()
    var lineColor : String = "lineOrange"
    
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
        molotovButton.position = CGPoint(x: 390, y: 1700)
        molotovButton.size = CGSize(width: 300, height: 300)
        molotovButton.zPosition = 11
        molotovButton.name = "Molotov"
        self.addChild(molotovButton)
        
        var ctButton = SKSpriteNode()
        ctButton = SKSpriteNode(imageNamed: "teamCT")
        ctButton.position = CGPoint(x: 880, y: 1680)
        ctButton.size = CGSize(width: 100, height: 120)
        ctButton.zPosition = 11
        ctButton.name = "teamCT"
        self.addChild(ctButton)
        
        var tButton = SKSpriteNode()
        tButton = SKSpriteNode(imageNamed: "teamT")
        tButton.position = CGPoint(x: 620, y: 1680)
        tButton.size = CGSize(width: 100, height: 120)
        tButton.zPosition = 11
        tButton.name = "teamT"
        self.addChild(tButton)
        
        var markerButton = SKSpriteNode()
        markerButton = SKSpriteNode(imageNamed: "Marker")
        markerButton.position = CGPoint(x: 1150, y: 1700)
        markerButton.size = CGSize(width: 100, height: 120)
        markerButton.zPosition = 11
        markerButton.name = "markerButton"
        self.addChild(markerButton)
        
        var squareOrange = SKSpriteNode()
        squareOrange = SKSpriteNode(imageNamed: "squareOrange")
        squareOrange.position = CGPoint(x: 1100, y: 1600)
        squareOrange.size = CGSize(width: 80, height: 80)
        squareOrange.zPosition = 11
        squareOrange.name = "squareOrange"
        self.addChild(squareOrange)
        
        var squareBlue = SKSpriteNode()
        squareBlue = SKSpriteNode(imageNamed: "squareBlue")
        squareBlue.position = CGPoint(x: 1180, y: 1600)
        squareBlue.size = CGSize(width: 80, height: 80)
        squareBlue.zPosition = 11
        squareBlue.name = "squareBlue"
        self.addChild(squareBlue)
        
        var eraserButton = SKSpriteNode()
        eraserButton = SKSpriteNode(imageNamed: "eraserButton")
        eraserButton.position = CGPoint(x: 1410, y: 1660)
        eraserButton.size = CGSize(width: 150, height: 150)
        eraserButton.zPosition = 11
        eraserButton.name = "eraserButton"
        self.addChild(eraserButton)
        

        selectionSquare = SKShapeNode()
        selectionSquare = SKShapeNode(rectOf: CGSize(width: 246, height: 320))
        selectionSquare.position = CGPoint(x: -140, y: 1670)
        selectionSquare.zPosition = 13
        selectionSquare.lineWidth = 10
        selectionSquare.strokeColor = NSColor.black
        selectionSquare.fillColor = .clear
        selectionSquare.name = "Square"
        addChild(selectionSquare)
        
    }
    override func mouseDown(with event: NSEvent) {
        
        XPos = event.location(in: self).x
        YPos = event.location(in: self).y
        
        // create the images which each button will create
        
        var smokeGrenade = SKSpriteNode()
        smokeGrenade = SKSpriteNode(imageNamed: "SmokeGrenade")
        smokeGrenade.size = CGSize(width: 75, height: 60)
        smokeGrenade.zPosition = 12
        smokeGrenade.name = "SmokeGrenade"
        
        var MolotovGrenade = SKSpriteNode()
        MolotovGrenade = SKSpriteNode(imageNamed: "MolotovGrenade")
        MolotovGrenade.size = CGSize(width: 125, height: 100)
        MolotovGrenade.zPosition = 12
        MolotovGrenade.name = "MolotovGrenade"
        
        var tLogo = SKSpriteNode()
        tLogo = SKSpriteNode(imageNamed: "tLogo")
        tLogo.size = CGSize(width: 50, height: 40)
        tLogo.zPosition = 12
        tLogo.name = "tLogo"
        
        var ctLogo = SKSpriteNode()
        ctLogo = SKSpriteNode(imageNamed: "ctLogo")
        ctLogo.size = CGSize(width: 50, height: 40)
        ctLogo.zPosition = 12
        ctLogo.name = "ctLogo"

        
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
            

                
                if event.location(in: self).y >= 1505 {
                    if event.location(in: self).x <= 240 {
                    
                    lastButtonPressed = "Smoke"
                    
                    
                }
            }
            
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "Smoke" {
                
                
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1505 {
                    smokeGrenade.position = CGPoint(x: (event.location(in: self).x), y: (event.location(in: self).y))
                 
                    print("Smoke")
                    self.addChild(smokeGrenade)
                }
            
                // shift the position of the selectionSquare
                //selectionSquare.position = CGPoint(x: 115, y: 1670)
                let actionMove = SKAction.move(to: CGPoint(x: 115, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)
                
            }
            
 
                
                if event.location(in: self).y >= 1505 {

                        if event.location(in: self).x >= 240  && event.location(in: self).x <= 490  {
                           
                    lastButtonPressed = "Molotov"
            
                
                    
                            
                    }
                }
            
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "Molotov" {
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1505 {
                    
                    MolotovGrenade.position = CGPoint(x: (event.location(in: self).x), y: (event.location(in: self).y))
                    print("Molotov")
                    self.addChild(MolotovGrenade)
                }
                
                // shift the position of the selectionSquare
                
//                selectionSquare.position = CGPoint(x: 370, y: 1670)
                let actionMove = SKAction.move(to: CGPoint(x: 370, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)

                
            }
            
            
                
            if event.location(in: self).y >= 1505 {
                
                if event.location(in: self).x > 491 {
                    if event.location(in: self).x < 750 {
                    
                    
                    lastButtonPressed = "teamT"
                    
                    
                
                }
            }
            }
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "teamT" {
                
                
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1505 {
                    tLogo.position = CGPoint(x: (event.location(in: self).x), y: (event.location(in: self).y))
                    print("teamT")
                    self.addChild(tLogo)
                }
                
                // shift the position of the selectionSquare
                //selectionSquare.position = CGPoint(x: 115, y: 1670)
                let actionMove = SKAction.move(to: CGPoint(x: 625, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)
                
            }
            
         
                if event.location(in: self).y >= 1505 {
                    
                    if event.location(in: self).x > 750 {
                        if event.location(in: self).x < 1011 {
                    
                    lastButtonPressed = "teamCT"
                    
                        }
                    }
                }
            
            print("\(lastButtonPressed)", terminator: "")
            
            // check if the smoke button has been pressed
            
            if lastButtonPressed == "teamCT" {
                
                
                
                // make sure that mouse is clicked in the image
                
                if event.location(in: self).y <= 1505 {
                    ctLogo.position = CGPoint( x: event.location(in: self).x, y: event.location(in: self).y )
                    print("teamCT")
                    self.addChild(ctLogo)
                }
                
                // shift the position of the selectionSquare
                //selectionSquare.position = CGPoint(x: 115, y: 1670)
                let actionMove = SKAction.move(to: CGPoint(x: 880, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)
        
            }
            
            if event.location(in: self).y >= 1505 {
                if event.location(in: self).x > 1011 {
                  if event.location(in: self).x < 1362 {
                    lastButtonPressed = "markerButton"
                    
                    
                    
                    
                }
            }
            }
            if lastButtonPressed == "markerButton" {
                
                let actionMove = SKAction.move(to: CGPoint(x: 1135, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)
                
            }
            
            
            if node.name == "squareBlue" {
                
                // Only proceed when the mouse location is within the node clicked on
                
                if node.contains(event.location(in: self)) {
               
                lineColor = "lineBlue"
                    
                    
                }
                }
            
            if node.name == "squareOrange" {
                
                // Only proceed when the mouse location is within the node clicked on
                
                if node.contains(event.location(in: self)) {
                    
                    lineColor = "lineOrange"
                    
                    
                }
            }
         
            if event.location(in: self).y >= 1505 {
                if event.location(in: self).x > 1262 {
                    if event.location(in: self).x < 1523 {
                        lastButtonPressed = "eraserButton"
                        
                        
                        
                        
                    }
                }
            }
            if lastButtonPressed == "eraserButton" {
                if event.location(in: self).y < 1505 {
                    for node in self.children {
                        if node.name == "tLogo" {
                        
                            if node.contains(event.location(in: self)) {
                            removeFromParent()
                            }
            
                            }
                    }
                }
                let actionMove = SKAction.move(to: CGPoint(x: 1400, y: 1670), duration: 0.3)
                selectionSquare.run(actionMove)
                
            }
            
        }
        
            // check if the smoke button has been pressed
        
        
      
    
            
    }
    
    override func mouseDragged(with event: NSEvent) {
    
        XPos = event.location(in: self).x
        YPos = event.location(in: self).y
        
        var line = SKSpriteNode()
        line = SKSpriteNode(imageNamed: ("\(lineColor)") )
        line.size = CGSize(width: 15, height: 15)
       line.zPosition = 13
        line.name = "\(lineColor)"

        if lastButtonPressed == "markerButton" {
            if event.location(in: self).y < 1505 {
                
            
                line.position = CGPoint( x: event.location(in: self).x, y: event.location(in: self).y )
                
                
                print("line")
                self.addChild(line)
            
    
            }
        }
    }
//    func eraseObject(atX: CGFloat, atY: CGFloat) {
//        
//        func eraseObject(with event: NSEvent) {
//        
//        if lastButtonPressed == "eraserButton" {
//            
//            XPos = event.location(in: self).x
//            YPos = event.location(in: self).y
//          
//            print("\(XPos)", terminator: "")
//            print("\(YPos)", terminator: "")
//            
//            for node in self.children {
//                
//                if node.contains(event.location(in: self).x) {
//                    if node.contains(event.location(in: self).y) {
//                
//    
//                removeAllChildren()
//                }
//                }
//        }
//        }
//    }
//}
}
