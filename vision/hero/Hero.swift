//
//  Hero.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//


import SceneKit

class Hero : Sprite ,AnimTarget ,TouchDelgate{
    
    var model:SCNNode?
    

    init(){
      let scene = SCNScene(named: "art.scnassets/hero.scn")!
        
      model = scene.rootNode.childNodeWithName("hero", recursively: true)!
        
    }
    
    
    func getModel()->SCNNode{
        return self.model!
    }
    
    func target(dist:CGPoint){
       
    }
    
    func touchesBegan(point:CGPoint){
        target(point)
    }
    
    
    
    func update(currentTime: NSTimeInterval) {
    }
    

    
}