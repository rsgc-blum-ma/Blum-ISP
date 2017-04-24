//
//  ViewController.swift
//  CS:GO Map layout
//
//  Created by Student on 2017-02-28.
//  Copyright © 2017 Student. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {
    
    @IBOutlet var skView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        let scene = GameScene(size: CGSize(width: 2040, height:1536))
        let scene2 = GameScene2(size: CGSize(width: 4000, height:2000))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        scene2.scaleMode = .aspectFill
        skView.presentScene(scene)
        skView.showsPhysics = true
    }
}
