//
//  GameHUD.swift
//  CrazyRoad
//
//  Created by Jim Bucciferro on 12/24/18.
//  Copyright © 2018 jarbyvid. All rights reserved.
//

import SpriteKit

class GameHUD: SKScene {

    var logoLabel : SKLabelNode?
    var tapToPlayLabel : SKLabelNode?
    var pointsLabel : SKLabelNode?
    
    init(with size: CGSize, menu: Bool) {
        super.init(size: size)
        if menu {
            addMenuLabels()
        } else {
            addPointsLabel()
        }
    }
    
    func addMenuLabels() {
        logoLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        tapToPlayLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        guard let logoLabel = logoLabel, let tapToPlayLabel = tapToPlayLabel else { return }
        
        logoLabel.text = "Crazy Road"
        logoLabel.fontSize = 35.0
        logoLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(logoLabel)
        
        tapToPlayLabel.text = "Tap to Play"
        tapToPlayLabel.fontSize = 25.0
        tapToPlayLabel.position = CGPoint(x: frame.midX, y: frame.midY - logoLabel.frame.size.height)
        addChild(tapToPlayLabel)
    }
    
    func addPointsLabel() {
        pointsLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        guard let pl = pointsLabel else { return }
        
        pl.text = "0"
        pl.fontSize = 40.0
        pl.position = CGPoint(x: frame.minX + pl.frame.size.width,
                              y: frame.maxY - pl.frame.size.height * 2)
        addChild(pl)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
