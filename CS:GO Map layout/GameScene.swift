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
var MapSelected = SKSpriteNode()
class GameScene: SKScene {
    var Map = MapSelected
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.blue
        
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        // Now we'll create the image sprites for each map
        
        var Inferno = SKSpriteNode()
        Inferno = SKSpriteNode(imageNamed: "Inferno")
        Inferno.position = CGPoint(x: 270, y: 250)
        Inferno.size = CGSize(width: 500, height: 500)
        Inferno.name = "Inferno"
        self.addChild(Inferno)

        var Nuke = SKSpriteNode()
        Nuke = SKSpriteNode(imageNamed: "Nuke")
        Nuke.position = CGPoint(x: 770, y: 250)
        Nuke.size = CGSize(width: 500, height: 500)
        Nuke.name = "Nuke"
        self.addChild(Nuke)
        
        var Mirage = SKSpriteNode()
        Mirage = SKSpriteNode(imageNamed: "Mirage")
        Mirage.position = CGPoint(x: 1270, y: 250)
        Mirage.size = CGSize(width: 500, height: 500)
        Mirage.name = "Mirage"
        self.addChild(Mirage)
        
        var Overpass = SKSpriteNode()
        Overpass = SKSpriteNode(imageNamed: "Overpass")
        Overpass.position = CGPoint(x: 1770, y: 250)
        Overpass.size = CGSize(width: 500, height: 500)
        Overpass.name = "Overpass"
        self.addChild(Overpass)
        
        var Dust = SKSpriteNode()
        Dust = SKSpriteNode(imageNamed: "Dust")
        Dust.position = CGPoint(x: 270, y: 750)
        Dust.size = CGSize(width: 500, height: 500)
        Dust.name = "Dust"
        self.addChild(Dust)
        
        var Train = SKSpriteNode()
        Train = SKSpriteNode(imageNamed: "Train")
        Train.position = CGPoint(x: 770, y: 750)
        Train.size = CGSize(width: 500, height: 500)
        Train.name = "Train"
        self.addChild(Train)
        
        var Cache = SKSpriteNode()
        Cache = SKSpriteNode(imageNamed: "Cache")
        Cache.position = CGPoint(x: 1270, y: 750)
        Cache.size = CGSize(width: 500, height: 500)
        Cache.name = "Cache"
        self.addChild(Cache)
        
        var Cobblestone = SKSpriteNode()
        Cobblestone = SKSpriteNode(imageNamed: "Cobblestone")
        Cobblestone.position = CGPoint(x: 1770, y: 750)
        Cobblestone.size = CGSize(width: 500, height: 500)
        Cobblestone.name = "Cobblestone"
        self.addChild(Cobblestone)
        
        // add a title
        
        let Title = SKLabelNode(fontNamed: "Helvetica-Bold")
        Title.text = "Select A Map"
        Title.fontSize = 100
        Title.color = SKColor.red
        Title.position = CGPoint(x: 1040, y: 1300)
        addChild(Title)
        
    }
    override func mouseDown(with event: NSEvent) {
        
        // Iterate over all child nodes in the scene
        
        for node in self.children {
            
            // Only proceed when the mouse location is within the node clicked on
            
            if node.contains(event.location(in: self)) {
                
                // change value for MapSelected to be the image which the user has chose
                
                MapSelected = SKSpriteNode(imageNamed: (node.name)!)
            
                print("\(node.name)", terminator: "")
                
                // create a new GameScene
                let GameScene = GameScene2(size: size)
                
                // create an animation for the transition of scenes
                
                let reveal = SKTransition.doorsCloseHorizontal(withDuration: 0.5)
                
                // access the current view and present the new scene
                
                view?.presentScene(GameScene, transition: reveal)
            }
            
            
        }
    }
    
    
}





