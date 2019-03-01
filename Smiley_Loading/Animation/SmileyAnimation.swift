//
//  SmileyAnimation.swift
//  SprikeKitSimpleAnimation
//
//  Created by Vinitha on 27/02/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import Foundation
import SpriteKit

class smileyAnimation: UIView {
    
    let AnimationWholeView = UIView()
    var animationView = SKView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        AddAnimationVIew()
        
        self.backgroundColor = UIColor(white: 0, alpha: 0.7)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func AddAnimationVIew()
    {
        AnimationWholeView.frame.size = UIScreen.main.bounds.size
        //        AnimationWholeView.backgroundColor = UIColor(white: 0, alpha: 0.4)
        self.addSubview(AnimationWholeView)
        AnimationWholeView.addSubview(animationView)
    }
    
    
    public func ShowAnimation()
    {
        //        AddAnimationVIew()
        //        guard UIViewController..scene == nil else {
        //            return
        //        }
        
        let scene = self.makeScene()
        
        
        self.animationView.frame.origin.x = UIScreen.main.bounds.width/2-150
        self.animationView.frame.origin.y = UIScreen.main.bounds.height/2-100
        
        //        animationView.center.x = UIScreen.main.bounds.midX
        //        animationView.center.y = UIScreen.main.bounds.midY
        self.animationView.frame.size = scene.size
        self.animationView.allowsTransparency = true
        //        self.animationView.
        self.animationView.presentScene(scene)
        print(self.animationView.frame)
    }
    
    func hideAnimation()
    {
        self.removeFromSuperview()
        
    }
    
    
}
