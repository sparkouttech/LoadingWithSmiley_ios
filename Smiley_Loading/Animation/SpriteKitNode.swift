//
//  SpriteKitNode.swift
//  SprikeKitSimpleAnimation
//
//  Created by Vinitha on 27/02/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import Foundation
import SpriteKit

extension SKLabelNode {
    func renderEmoji(_ emoji: Character) {
        fontSize = 50
        text = String(emoji)
        
        verticalAlignmentMode = .center
        horizontalAlignmentMode = .center
    }
}
