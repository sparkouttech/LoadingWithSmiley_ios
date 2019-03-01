//
//  ViewController.swift
//  SprikeKitSimpleAnimation
//
//  Created by Vinitha on 30/01/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmojis: UITextField!
    private lazy var animationView = SKView()
    
    var anim = smileyAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(animationView)
        print(animationView.frame)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
    @IBAction func stopAnimation(_ sender: Any) {
        self.animationView.isHidden = true
        
    }
    
    @IBAction func LoadSpecificEmojisPressed(_ sender: Any) {
        self.view.endEditing(true)
        
        if txtEmojis.text! != ""
        {
            emojis = [Character]()
            for char in (txtEmojis.text?.characters)! {
                emojis.append(char)
            }
            
            self.anim = smileyAnimation(frame: self.view.frame)
            self.view.addSubview(anim)
            self.anim.ShowAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 15.0) {
                self.anim.hideAnimation()
            }
            
        }
        
    }
    
    @IBAction func ShowAnimation(_ sender: Any) {
        emojis = ["🍜", "☕️", "🍔", "🍕"]
        self.anim = smileyAnimation(frame: self.view.frame)
        self.view.addSubview(anim)
        self.anim.ShowAnimation()
        DispatchQueue.main.asyncAfter(deadline: .now() + 15.0) {
            self.anim.hideAnimation()
        }
        
        
    }
}




