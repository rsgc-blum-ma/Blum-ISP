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
var MapSelected : String?
class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.blue
        
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        // Now we'll create the image sprites for each map
        
        var Inferno = SKSpriteNode()
        Inferno = SKSpriteNode(imageNamed: "Inferno")
        Inferno.position = CGPoint(x: 250, y: 250)
        Inferno.size = CGSize(width: 500, height: 500)
        Inferno.name = "Inferno"
        Inferno.physicsBody = SKPhysicsBody(rectangleOf: Inferno.size)
        
        self.addChild(Inferno)
        print(Inferno.position.x)
        print(Inferno.position.y)
        print(Inferno.size.width)
        print(Inferno.size.height)
        
        var Nuke = SKSpriteNode()
        Nuke = SKSpriteNode(imageNamed: "Nuke")
        Nuke.position = CGPoint(x: 750, y: 250)
        Nuke.size = CGSize(width: 500, height: 500)
        Nuke.name = "Nuke"
        self.addChild(Nuke)
        
        var Mirage = SKSpriteNode()
        Mirage = SKSpriteNode(imageNamed: "Mirage")
        Mirage.position = CGPoint(x: 1250, y: 250)
        Mirage.size = CGSize(width: 500, height: 500)
        Mirage.name = "Mirage"
        self.addChild(Mirage)
        
        var Overpass = SKSpriteNode()
        Overpass = SKSpriteNode(imageNamed: "Overpass")
        Overpass.position = CGPoint(x: 1750, y: 250)
        Overpass.size = CGSize(width: 500, height: 500)
        Overpass.name = "Overpass"
        self.addChild(Overpass)
        
        var Dust = SKSpriteNode()
        Dust = SKSpriteNode(imageNamed: "Dust")
        Dust.position = CGPoint(x: 250, y: 750)
        Dust.size = CGSize(width: 500, height: 500)
        Dust.name = "Dust"
        self.addChild(Dust)
        
        var Train = SKSpriteNode()
        Train = SKSpriteNode(imageNamed: "Train")
        Train.position = CGPoint(x: 750, y: 750)
        Train.size = CGSize(width: 500, height: 500)
        Train.name = "Train"
        self.addChild(Train)
        
        var Cache = SKSpriteNode()
        Cache = SKSpriteNode(imageNamed: "Cache")
        Cache.position = CGPoint(x: 1250, y: 750)
        Cache.size = CGSize(width: 500, height: 500)
        Cache.name = "Cache"
        self.addChild(Cache)
        
        var Cobblestone = SKSpriteNode()
        Cobblestone = SKSpriteNode(imageNamed: "Cobblestone")
        Cobblestone.position = CGPoint(x: 1750, y: 750)
        Cobblestone.size = CGSize(width: 500, height: 500)
        Cobblestone.name = "Cobblestone"
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
    
        // Iterate over all child nodes in the scene
        for node in self.children {
            
            // Only check for nodes that have a name of "Dust" (for level selection)
            if let nodeName = node.name {
                
                // Only proceed when the mouse location is within the node clicke don
                if node.contains(event.location(in: self)) {
                    MapSelected = nodeName
                    
                }

            }
        }
        print(("\(MapSelected)"), terminator: "")
    }
}


