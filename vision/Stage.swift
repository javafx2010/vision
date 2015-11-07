//
//  Stage.swift
//  vision
//
//  Created by JavaFX on 11/7/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//

import SceneKit

protocol Stage {
    
    func getModel()->SCNScene
    
    func apply(node:Sprite)
}

