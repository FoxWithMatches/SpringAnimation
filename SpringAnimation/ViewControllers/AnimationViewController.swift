//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Alisa Ts on 24.11.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: SpringLabel!
    @IBOutlet var imageAnimation: SpringImageView!
    @IBOutlet var animationText: SpringLabel!
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func runAnimation(_ sender: UIButton) {
        descriptionLabel.text = animation.descriptionAnimation
        
        imageAnimation.animation = animation.preset
        imageAnimation.curve = animation.curve
        imageAnimation.force = CGFloat(animation.force)
        imageAnimation.duration = CGFloat(animation.duration)
        imageAnimation.delay = CGFloat(animation.delay)
        imageAnimation.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Go \(animation.preset)", for: .normal)
        
    }
}

