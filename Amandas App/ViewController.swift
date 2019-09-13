//
//  ViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/9/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    let animationTime = 3
    var noPressed: Int = 0
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var yesButtonOutlet: UIButton!
    @IBOutlet weak var noButtonOutlet: UIButton!
    @IBOutlet weak var rightArrowAnimationView: AnimationView!
    @IBOutlet weak var butWaitButtonOutlet: UIButton!
    @IBOutlet weak var firstLabelOutlet: UILabel!
    @IBOutlet weak var secondLabelOutlet: UILabel!
    @IBOutlet weak var viewControllerNumber: UILabel!
    @IBOutlet weak var withThatLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeButtonACircle(yesButtonOutlet)
        makeButtonACircle(noButtonOutlet)
        firstLabelOutlet.alpha = 0.0
        secondLabelOutlet.alpha = 0.0
        butWaitButtonOutlet.alpha = 0.0
        yesButtonOutlet.alpha = 0.0
        noButtonOutlet.alpha = 0.0
        viewControllerNumber.alpha = 0.0
        withThatLabel.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            self.withThatLabel.alpha = 1
        }) { (true) in
            self.showSecondTitle()
        }
    }
    
    func showSecondTitle(){
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            self.firstLabelOutlet.alpha = 1
            self.withThatLabel.alpha = 0.25
        }) { (true) in
            self.showButtons()
        }
    }
    
    func showButtons(){
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            self.secondLabelOutlet.alpha = 1
            self.firstLabelOutlet.alpha = 0.25
        }) { (true) in
            self.noButtonOutlet.alpha = 1
            self.yesButtonOutlet.alpha = 1
        }
    }
    
    @IBAction func yesButtonAction(_ sender: UIButton) {
        sender.flash()
        startHeartAnimation(animationView)
        //startHeartAnimation(animationView)
    }
    
    @IBAction func noButtonAction(_ sender: UIButton) {
    }
    
    func startHeartAnimation(_ animationView: AnimationView){
        let animationName = "Heart_Fillup"
        animationView.alpha = 1
        animationView.animation = Animation.named(animationName)
        //animationView.loopMode = LottieLoopMode.repeatBackwards(1)
        animationView.play { (true) in
            //animationView.alpha = 0.0
            self.startAnAnimation("Right_Arrow",self.rightArrowAnimationView, doloops: true)
            self.butWaitButtonOutlet.alpha = 1
        }
    }
    
    func startAnAnimation(_ animationName: String,_ animationView: AnimationView, doloops loop: Bool){
        animationView.alpha = 1
        animationView.animation = Animation.named(animationName)
        if loop{
            animationView.loopMode = LottieLoopMode.loop
        }
        animationView.play()
    }
    
    /*func replayAnimation(_ animationName: String, _ animationView: AnimationView){
        animationView.animation = Animation.named(animationName)
        animationView.play(fromFrame: 75, toFrame: 0)
    }*/
    
    func makeButtonACircle(_ button: UIButton){
        button.layer.cornerRadius = button.frame.size.width / 2
    }

}

