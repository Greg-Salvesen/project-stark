//
//  TapGame.swift
//  Project Stark
//
//  Created by Greg Salvesen on 12/15/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class TapGame: MiniGames {
    
    var numTaps: Int = 0
    var mallet: TapMallet!
    
    override init(size: CGSize, curLevel: Int) {
        super.init(size: size, curLevel: curLevel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        // Add Mallet
        mallet = TapMallet(size: CGSizeMake(120, 120))
        mallet.position = view.center
        addChild(mallet)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        super.touchesBegan(touches, withEvent: event)
        numTaps++
        let tapsRequired = kTapsRequired[curLevel]
        if(numTaps < tapsRequired) {
            mallet.rotate(mallet.finishedDegree / CGFloat(tapsRequired))
        } else if(numTaps == tapsRequired) {
            mallet.rotate(mallet.finishedDegree / CGFloat(tapsRequired))
            print("You did it!")
            mallet.rotate(-mallet.finishedDegree - 45)
        }
    }
    
}