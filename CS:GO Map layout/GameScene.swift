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
        Inferno.size = CGSize(width: 50, height: 50)
        Inferno.setScale(0.3)
        self.addChild(Inferno)
        
        var Nuke = SKSpriteNode()
        Nuke = SKSpriteNode(imageNamed: "Nuke")
        Nuke.position = CGPoint(x: 250, y: 250)
        Nuke.size = CGSize(width: 50, height: 50)
        Nuke.setScale(0.3)
        self.addChild(Nuke)
        
        var Mirage = SKSpriteNode()
        Mirage = SKSpriteNode(imageNamed: "Mirage")
        Mirage.position = CGPoint(x: 250, y: 250)
        Mirage.size = CGSize(width: 50, height: 50)
        Mirage.setScale(0.3)
        self.addChild(Mirage)
        
        var Train = SKSpriteNode()
        Train = SKSpriteNode(imageNamed: "Train")
        Train.position = CGPoint(x: 250, y: 250)
        Train.size = CGSize(width: 50, height: 50)
        Train.setScale(0.3)
        self.addChild(Train)
        
        var Overpass = SKSpriteNode()
        Overpass = SKSpriteNode(imageNamed: "Overpass")
        Overpass.position = CGPoint(x: 250, y: 250)
        Overpass.size = CGSize(width: 50, height: 50)
        Overpass.setScale(0.3)
        self.addChild(Overpass)
        
        var Cobblestone = SKSpriteNode()
        Cobblestone = SKSpriteNode(imageNamed: "Cobblestone")
        Cobblestone.position = CGPoint(x: 250, y: 250)
        Cobblestone.size = CGSize(width: 50, height: 50)
        Cobblestone.setScale(0.3)
        self.addChild(Cobblestone)
        
        var Cache = SKSpriteNode()
        Cache = SKSpriteNode(imageNamed: "Cache")
        Cache.position = CGPoint(x: 250, y: 250)
        Cache.size = CGSize(width: 50, height: 50)
        Cache.setScale(0.3)
        self.addChild(Cache)
        
        var Dust = SKSpriteNode()
        Dust = SKSpriteNode(imageNamed: "Dust")
        Dust.position = CGPoint(x: 250, y: 250)
        Dust.size = CGSize(width: 50, height: 50)
        Dust.setScale(0.3)
        self.addChild(Dust)
        
        
        
    }
}
