//
//  TapButton.swift
//  Project Stark
//
//  Created by Greg Salvesen on 12/15/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class TapButton: SKSpriteNode {

    var curAnimIdx = 0
    var maxAnim = kButtonImages.count - 1
    
    init(size: CGSize) {
        super.init(texture: SKTexture(imageNamed: kButtonImages[curAnimIdx]), color: UIColor.clearColor(), size: size)
        
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showNextAnim() {
        if(curAnimIdx < maxAnim) {
            curAnimIdx++
        }
        texture = SKTexture(imageNamed: kButtonImages[curAnimIdx])
    }
    
    
}

    