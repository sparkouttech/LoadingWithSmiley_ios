//
//  SprikekitScene.swift
//  SprikeKitSimpleAnimation
//
//  Created by Vinitha on 27/02/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import Foundation
import SpriteKit

var emojis:[Character] = ["🍜", "☕️", "🍔", "🍕"]

extension UIView {
    func makeScene() -> SKScene {
        
        let minimumDimension = min(self.frame.width, self.frame.height)
        let size = CGSize(width: 300, height: 200)
        let scene = SKScene(size: size)
        scene.backgroundColor = SKColor.clear
        addEmoji(to: scene)
        animateNodes(scene.children)
        return scene
    }
    
    func addEmoji(to scene: SKScene) {
        let allEmoji: [Character] = emojis
        let distance = floor(scene.size.width / 4)
        
        for (index, emoji) in allEmoji.enumerated() {
            let node = SKLabelNode()
            node.renderEmoji(emoji)
            node.position.y = floor(scene.size.height / 2)
            node.position.x = distance * (CGFloat(index) + 0.5)
            scene.addChild(node)
        }
        
    }
    
    
    //    func animateNodes(_ nodes: [SKNode]) {
    //        for (index, node) in nodes.enumerated() {
    //            node.run(.sequence([
    //                .wait(forDuration: TimeInterval(index) * 0.2),
    //                .repeatForever(.sequence([
    //                    .scale(to: 1.5, duration: 0.3),
    //                    .scale(to: 1, duration: 0.3),
    //                    .wait(forDuration: 2)
    //                    ]))
    //                ]))
    //        }
    //    }
    //
    
    func animateNodes(_ nodes: [SKNode]) {
        
        for (index, node) in nodes.enumerated() {
            node.run(.sequence([
                .wait(forDuration: TimeInterval(index) * 0.2),
                .repeatForever(.sequence([
                    .scale(to: 1.5, duration: 0.2),
                    .scale(to: 1, duration: 0.2),
                    .wait(forDuration: 2)
                    ]))
                ]))
            node.run(.sequence([
                .wait(forDuration: TimeInterval(index) * 0.1),
                .repeatForever(.sequence([
                    // A group of actions get performed simultaneously
                    .group([
                        .sequence([
                            .scale(to: 1.5, duration: 0.3),
                            .scale(to: 1, duration: 0.3)
                            ]),
                        // Rotate by 360 degrees (pi * 2 in radians)
                        .rotate(byAngle: .pi * 2, duration: 0.6)
                        ]),
                    .wait(forDuration: 2)
                    ]))
                ]))
        }
    }
    
    
}

