//
//  GameViewController.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright (c) 2015 JavaFX. All rights reserved.
//


import UIKit
import SceneKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    var hero:Hero!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // retrieve the SCNView
        let scnView = self.view as! SCNView
        
        let gameStage=GameScene()
        
        // set the scene to the view
        scnView.scene = gameStage.getModel()
        
        
        let hero=Hero()
        
        gameStage.apply(hero)
        
        
        // allows the user to manipulate the camera
        scnView.allowsCameraControl = true
        
        scnView.showsStatistics=false
        
        
        scnView.backgroundColor = UIColor.blackColor()
            

       
    }
}
