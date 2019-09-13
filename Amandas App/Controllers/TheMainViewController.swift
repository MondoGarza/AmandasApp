//
//  TheMainViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/12/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit
import Lottie

class TheMainViewController: UIViewController {
    let animationName = "loader-animation"
    @IBOutlet weak var loaderAnimationView: AnimationView!
    @IBOutlet weak var beginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginButtonOutlet.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        beginButtonOutlet.alpha = 1
        startAnAnimation(animationName, loaderAnimationView, doloops: true)
    }
    
    
    @IBAction func beginButtonAction(_ sender: Any) {
        loaderAnimationView.stop()
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
