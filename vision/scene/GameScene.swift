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
    
    var items:Array<Sprite>?
    
    var touchDelgate:TouchDelgate!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(size:CGSize) {
        super.init(size: size)
        
        items=Array<Sprite>()
            
        // adding the background
        backgroundNode = SKSpriteNode(imageNamed: "background")
        backgroundNode!.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundNode!.position = CGPoint(x: size.width / 2.0, y: 0.0)
        addChild(backgroundNode!)
    }
    
    func apply(node:Sprite){
        addChild(node.getModel())
        items?.append(node)
    }
    
    func applyTouchDelgate(touchDelgate:TouchDelgate){
        self.touchDelgate=touchDelgate
    }
    
    override func touchesBegan(touches:Set<UITouch>, withEvent event: UIEvent?) {
        let firstPoint=touches.first!.locationInNode(self)
        let dist:CGPoint=CGPoint(x:firstPoint.x,y:firstPoint.y)
        touchDelgate!.touchesBegan(dist)
    }
    
    override func update(currentTime: NSTimeInterval) {
        for var i=0;i<items?.endIndex;i++ {
            items![i].update(currentTime)
        }
    }
    

}