//
//  MiniGames.swift
//  Project Stark
//
//  Created by Greg Salvesen on 12/15/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class MiniGames: SKScene {
    
    var curLevel: Int!
    var startTime: CFTimeInterval!
    var wonGame = false
    
    init(size: CGSize, curLevel: Int) {
        super.init(size: size)
        self.curLevel = curLevel
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        if(startTime == nil) {
            startTime = currentTime
        }
        let timeDiff = currentTime - startTime
        
        
    }
    
}