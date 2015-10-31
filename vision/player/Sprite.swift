//
//  Sprite.swift
//  vision
//
//  Created by JavaFX on 10/31/15.
//  Copyright © 2015 JavaFX. All rights reserved.
//

import UIKit
import SpriteKit

protocol Sprite {
    
    func update(currentTime: NSTimeInterval)
    
    func getModel()->SKSpriteNode
}
