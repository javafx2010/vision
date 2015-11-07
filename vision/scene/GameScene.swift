//
//  GameScene.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//


import SceneKit

class GameScene :Stage  {
    
    var items:Array<Sprite>?
    
    var scene:SCNScene?
    
    init(){
        items=Array<Sprite>()
        
        
        scene = SCNScene(named: "art.scnassets/ship.scn")!
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene!.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = SCNLightTypeOmni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene!.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = SCNLightTypeAmbient
        ambientLightNode.light!.color = UIColor.darkGrayColor()
        scene!.rootNode.addChildNode(ambientLightNode)
    
    }
    
    func getModel()->SCNScene{
        return scene!
    }
    
    func apply(node:Sprite){
        scene!.rootNode.addChildNode(node.getModel())
        items?.append(node)
    }
    
    
}