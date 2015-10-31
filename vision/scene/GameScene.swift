//
//  GameScene.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//


import SpriteKit

class GameScene: SKScene {
    
    var backgroundNode : SKSpriteNode?
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(size:CGSize) {
        super.init(size: size)
        // adding the background
        backgroundNode = SKSpriteNode(imageNamed: "background")
        backgroundNode!.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundNode!.position = CGPoint(x: size.width / 2.0, y: 0.0)
        addChild(backgroundNode!)
    }
    
    func apply(node:SKSpriteNode){
         addChild(node)
    }
    

}