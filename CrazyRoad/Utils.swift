//
//  Utils.swift
//  CrazyRoad
//
//  Created by Jim Bucciferro on 12/22/18.
//  Copyright © 2018 jarbyvid. All rights reserved.
//

import Foundation
import SceneKit

struct PhysicsCategory {
    static let chicken = 1
    static let vehicle = 2
    static let vegetation = 4
    static let collisionTestFront = 8
    static let collisionTestRight = 16
    static let collisionTestLeft = 32
}

struct Models {
    private static let treeScene = SCNScene(named: "art.scnassets/Tree.scn")!
    static let tree = treeScene.rootNode.childNode(withName: "tree", recursively: true)!
    
    private static let hedgeScene = SCNScene(named: "art.scnassets/Hedge.scn")!
    static let hedge = hedgeScene.rootNode.childNode(withName: "hedge", recursively: true)!
    
    private static let carScene = SCNScene(named: "art.scnassets/PurpleCar.scn")!
    static let car = carScene.rootNode.childNode(withName: "car", recursively: true)!
    
    private static let blueTruckScene = SCNScene(named: "art.scnassets/BlueTruck.scn")!
    static let blueTruck = blueTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
    
    private static let fireTruckScene = SCNScene(named: "art.scnassets/Firetruck.scn")!
    static let fireTruck = fireTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
}

let degreesPerRadian = Float(Double.pi / 180)
let radiansPerDegrees = Float(180/Double.pi)

func toRadians(angle: Float) -> Float {
    return angle * degreesPerRadian
}

func toRadians(angle: CGFloat) -> CGFloat {
    return angle * CGFloat(degreesPerRadian)
}



func randomBool(odds: Int) -> Bool {
    let random = arc4random_uniform(UInt32(odds))
    if(random < 1) {
        return true
    } else {
        return false
    }
}
