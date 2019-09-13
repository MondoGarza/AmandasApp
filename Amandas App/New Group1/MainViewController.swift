//
//  MainViewController.swift
//  Amandas App
//
//  Created by Amando Garza on 9/10/19.
//  Copyright © 2019 Amando Garza. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let animationTime = 10
    
    //Labels
    @IBOutlet weak var viewControllerNumber: UILabel!
    @IBOutlet weak var asYouLabel: UILabel!
    @IBOutlet weak var youCuteLabel: UILabel!
    @IBOutlet weak var asSeenBelowLabel: UILabel!
    @IBOutlet weak var hereLabel: UILabel!
    @IBOutlet weak var andHereLabel: UILabel!
    @IBOutlet weak var andAlsoHereLabel: UILabel!
    
    //Button
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    //Images
    @IBOutlet weak var cafeImageView: UIImageView!
    @IBOutlet weak var fingersImageView: UIImageView!
    @IBOutlet weak var boardwalkImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Rounds Images and the buttons corners
        cafeImageView.roundCorners(pointRadius: 5)
        fingersImageView.roundCorners(pointRadius: 5)
        boardwalkImageView.roundCorners(pointRadius: 5)
        nextButtonOutlet.layer.cornerRadius = nextButtonOutlet.frame.size.width / 2
        
        //Hides everything
        viewControllerNumber.alpha = 0
        asYouLabel.alpha = 0
        youCuteLabel.alpha = 0
        asSeenBelowLabel.alpha = 0
        hereLabel.alpha = 0
        andHereLabel.alpha = 0
        andAlsoHereLabel.alpha = 0
        cafeImageView.alpha = 0
        fingersImageView.alpha = 0
        boardwalkImageView.alpha = 0
        nextButtonOutlet.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.asYouLabel.alpha = 1
        }) { (true) in
            self.showYouCuteLabel()
        }
    }
    
    func showYouCuteLabel(){
        UIView.animate(withDuration: 1, animations: {
            self.youCuteLabel.alpha = 1
        }) { (true) in
            self.showHerePicture()
        }
    }
    
    func showHerePicture(){
        UIView.animate(withDuration: 3, animations: {
            self.asSeenBelowLabel.alpha = 1
            self.hereLabel.alpha = 1
            self.cafeImageView.alpha = 1
        }) { (true) in
            self.showCutePic()
        }
    }
    
    func showCutePic(){
        UIView.animate(withDuration: 3, animations: {
            self.andHereLabel.alpha = 1
            self.fingersImageView.alpha = 1
        }) { (true) in
            self.showAndAlsoHerePic()
        }
    }
    
    func showAndAlsoHerePic(){
        UIView.animate(withDuration: 3, animations: {
            self.andAlsoHereLabel.alpha = 1
            self.boardwalkImageView.alpha = 1
        }) { (true) in
            self.nextButtonOutlet.alpha = 1
        }
    }
    

}
