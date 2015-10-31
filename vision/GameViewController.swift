//
//  GameViewController.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright (c) 2015 JavaFX. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    var hero:Hero!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. Configure the main view
        let skView = self.view as! SKView
        skView.showsFPS = false
        // 2. Create and configure our game scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        hero=Hero(size:skView.bounds.size)
        
        scene.applyTouchDelgate(hero)
            
        scene.apply(hero)
            
        // 3. Show the scene.
        skView.presentScene(scene)
            

       
    }
}
