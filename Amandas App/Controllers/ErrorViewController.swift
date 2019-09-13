//
//  ErrorViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/11/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit
import Lottie

class ErrorViewController: UIViewController {

    @IBOutlet weak var errorAnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //startAnAnimation("Dead_Emoji", deadEmojiAnimationView, doloops: true)
        startAnAnimation("Error_Indicator", errorAnimationView, doloops: true)
    }
    
    func startAnAnimation(_ animationName: String,_ animationView: AnimationView, doloops loop: Bool){
        animationView.alpha = 1
        animationView.animation = Animation.named(animationName)
        if loop{
            animationView.loopMode = LottieLoopMode.loop
        }
        animationView.play()
    }

}
