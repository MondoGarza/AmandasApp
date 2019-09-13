//
//  SecondViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/11/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit
import Lottie

class SecondViewController: UIViewController {
    
    let animationTime: TimeInterval = 3
    let lottieAnimationName = "bouncing_heart"

    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var viewControllerNumber: UILabel!
    @IBOutlet weak var andILabel: UILabel!
    @IBOutlet weak var iLoveYouLabel: UILabel!
    @IBOutlet weak var moresoLabel: UILabel!
    @IBOutlet weak var anotherPicLabel: UILabel!
    @IBOutlet weak var theImageView: UIImageView!
    
    
    @IBOutlet weak var bouncingAnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButtonOutlet.layer.cornerRadius = nextButtonOutlet.frame.size.width / 2
        viewControllerNumber.alpha = 0
        andILabel.alpha = 0
        iLoveYouLabel.alpha = 0
        moresoLabel.alpha = 0
        anotherPicLabel.alpha = 0
        theImageView.alpha = 0
        nextButtonOutlet.alpha = 0
        theImageView.roundCorners(pointRadius: 10)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: animationTime, animations: {
            self.andILabel.alpha = 1
        }) { (true) in
            self.showiLoveYouLabel()
        }
    }
    
    func showiLoveYouLabel(){
        UIView.animate(withDuration: animationTime, animations: {
            self.andILabel.alpha = 0.25
            self.iLoveYouLabel.alpha = 1
        }) { (true) in
            self.startAnAnimation(self.lottieAnimationName,self.bouncingAnimationView,doloops: true)
            self.showmoresoLabel()
        }
    }
    
    func showmoresoLabel(){
        UIView.animate(withDuration: animationTime, animations: {
            self.moresoLabel.alpha = 1
        }) { (true) in
            self.showCutePic()
        }
    }
    
    func showCutePic(){
        UIView.animate(withDuration: animationTime, animations: {
            self.anotherPicLabel.alpha = 1
            self.theImageView.alpha = 1
        }) { (true) in
            self.nextButtonOutlet.alpha = 1
        }
    }
    
    func startAnAnimation(_ animationName: String,_ animationView: AnimationView, doloops loop: Bool){
        animationView.animation = Animation.named(animationName)
        if loop{
            animationView.loopMode = LottieLoopMode.loop
        }
        animationView.play()
    }
    
    

}
