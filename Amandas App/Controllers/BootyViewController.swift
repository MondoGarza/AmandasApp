//
//  BootyViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/10/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit
import Lottie

class BootyViewController: UIViewController {

    @IBOutlet weak var winkAnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winkAnimation(winkAnimationView)
    }
    
    func winkAnimation(_ animationView: AnimationView){
        let animationName = "emoji_wink"
        animationView.animation = Animation.named(animationName)
        animationView.loopMode = LottieLoopMode.loop
        animationView.play()
    }

}
