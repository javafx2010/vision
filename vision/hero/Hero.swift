//
//  Hero.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//


import SpriteKit


class Hero : Sprite ,AnimTarget ,TouchDelgate{
    
    var model:SKSpriteNode?
    
    var current:CGPoint?
    
    var dist:CGPoint?
    
    let fegment:CGFloat=10
    
    
    init(size:CGSize){
        current=CGPoint(x: size.width / 2.0, y: 80.0)
        model = SKSpriteNode(imageNamed: "hero")
        model!.position = current!
        dist=CGPoint(x: size.width / 2.0, y: 80.0)
        model!.size.width=60
        model!.size.height=80
        
//        model!.physicsBody = SKPhysicsBody(circleOfRadius: model!.size.width/2)
//        model!.physicsBody!.dynamic = false
    }
    
    func getModel()->SKSpriteNode{
        return self.model!
    }
    
    func target(dist:CGPoint){
        self.dist=dist
    }
    
    func touchesBegan(point:CGPoint){
        target(point)
    }
    
    
    func update(currentTime: NSTimeInterval) {
        var offsetX=(dist!.x-current!.x)/fegment
        var offsetY=(dist!.y-current!.y)/fegment
        current!.x+=offsetX
        current!.y+=offsetY
        model!.position = current!
    }
    

    
}