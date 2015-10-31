//
//  Hero.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//


import SpriteKit

class Hero {
    
    var model:SKSpriteNode?
    
    init(size:CGSize){
        model = SKSpriteNode(imageNamed: "hero")
        model!.position = CGPoint(x: size.width / 2.0, y: 80.0)
        model?.size.width=60
        model?.size.height=80
    }
    
    func getModel()->SKSpriteNode{
        return self.model!
    }
    

    
}