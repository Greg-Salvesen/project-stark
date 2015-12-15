//
//  GameViewController.swift
//  Project Stark
//
//  Created by Greg Salvesen on 12/14/15.
//  Copyright (c) 2015 Dark Vault Studios. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
