//
//  TapMallet.swift
//  Project Stark
//
//  Created by Greg Salvesen on 12/15/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class TapMallet: SKSpriteNode {
    
    var finishedDegree: CGFloat = 100
    
    init(size: CGSize) {
        super.init(texture: SKTexture(imageNamed: "mallet.png"), color: UIColor.clearColor(), size: size)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func rotate(degrees: CGFloat) {
        let rotate = SKAction.rotateByAngle((CGFloat(-M_PI) / 180.0) * degrees, duration: 0.1)
        
        runAction(rotate)
        
    }
    
}