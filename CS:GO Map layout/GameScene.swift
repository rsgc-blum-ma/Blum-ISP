//
//  GameScene.swift
//  CS:GO Map layout
//
//  Created by Student on 2017-02-28.
//  Copyright © 2017 Student. All rights reserved.
//

import SpriteKit
import GameplayKit
import Cocoa

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        
        var Inferno = SKSpriteNode()
        Inferno = SKSpriteNode(imageNamed: "Inferno")
        Inferno.position = CGPoint(x: 250, y: 250)
        Inferno.size = CGSize(width: 500, height: 500)
        Inferno.setScale(1)
        self.addChild(Inferno)
        
        var Nuke = SKSpriteNode()
        Nuke = SKSpriteNode(imageNamed: "Nuke")
        Nuke.position = CGPoint(x: 750, y: 250)
        Nuke.size = CGSize(width: 500, height: 500)
        Nuke.setScale(1)
        self.addChild(Nuke)
        
        var Mirage = SKSpriteNode()
        Mirage = SKSpriteNode(imageNamed: "Mirage")
        Mirage.position = CGPoint(x: 1250, y: 250)
        Mirage.size = CGSize(width: 500, height: 500)
        Mirage.setScale(1)
        self.addChild(Mirage)
        
        var Overpass = SKSpriteNode()
        Overpass = SKSpriteNode(imageNamed: "Overpass")
        Overpass.position = CGPoint(x: 1750, y: 250)
        Overpass.size = CGSize(width: 500, height: 500)
        Overpass.setScale(1)
        self.addChild(Overpass)
        
        var Dust = SKSpriteNode()
        Dust = SKSpriteNode(imageNamed: "Dust")
        Dust.position = CGPoint(x: 250, y: 750)
        Dust.size = CGSize(width: 500, height: 500)
        Dust.setScale(1)
        self.addChild(Dust)
        
        var Train = SKSpriteNode()
        Train = SKSpriteNode(imageNamed: "Train")
        Train.position = CGPoint(x: 750, y: 750)
        Train.size = CGSize(width: 500, height: 500)
        Train.setScale(1)
        self.addChild(Train)
        
        var Cache = SKSpriteNode()
        Cache = SKSpriteNode(imageNamed: "Cache")
        Cache.position = CGPoint(x: 1250, y: 750)
        Cache.size = CGSize(width: 500, height: 500)
        Cache.setScale(1)
        self.addChild(Cache)
        
        var Cobblestone = SKSpriteNode()
        Cobblestone = SKSpriteNode(imageNamed: "Cobblestone")
        Cobblestone.position = CGPoint(x: 1750, y: 750)
        Cobblestone.size = CGSize(width: 500, height: 500)
        Cobblestone.setScale(1)
        self.addChild(Cobblestone)
        
        // add a title
    
        let Title = SKLabelNode(fontNamed: "Helvetica-Bold")
        Title.text = "Select A Map"
        Title.fontSize = 100
        Title.color = SKColor.red
        Title.position = CGPoint(x: 1020, y: 1100)
        addChild(Title)
    
    
}
    
override func mouseDown(with event: NSEvent) {
    
    
    // Note: This is just to test my hitboxes, will remove this
    
    let Title2 = SKLabelNode(fontNamed: "Helvetica-Bold")
    Title2.text = "Ur Hitboxes are working Max"
    Title2.fontSize = 100
    Title2.color = SKColor.red
    Title2.position = CGPoint(x: 1020, y: 1000)
    
    // Iterate over all child nodes in the scene
    for node in self.children {
        
        // Only check for nodes that have a name of "Dust" (for level selection)
        if let nodeName = node.name {
            if nodeName.contains("Dust") {
                
                // Then see if the click is within this box
                if node.contains(event.locationInWindow) {
                    
                    // for now
                
                    addChild(Title2)
                    
                                    
                }
                }
            }
        }
    }
}
