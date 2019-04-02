//
//  ShapeManager.swift
//  SceneKitTry1
//
//  Created by William Sutton on 2/28/19.
//  Copyright © 2019 ahollar. All rights reserved.
//

import Foundation
import UIKit
import SceneKit


class ShapeManager {
    
    var viewController: StudioViewController
    
    init(controller: StudioViewController){
        self.viewController = controller    }
    
    func spawnCircle() -> SCNNode{
        print("spawning circle")
        let scnView = viewController.view as! SCNView
        let sphereGeometry = SCNSphere(radius: 5)
        let r = 0.9
        let g = 0.9
        let b = 0.9
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.init(red:CGFloat(r), green:CGFloat(g), blue:CGFloat(b), alpha:1)
        let sphereNode = SCNNode(geometry: sphereGeometry)
        scnView.scene?.rootNode.addChildNode(sphereNode)
        return sphereNode
    }
    
    func spawnJoint() -> Joint{
        print("spawning joint")
        let scnView = viewController.view as! SCNView
        let jointGeometry = SCNSphere(radius: 5)
        let joint = Joint(jointGeometry: jointGeometry)
        joint.scale.x = 0.1
        joint.scale.y = 0.1
        joint.scale.z = 0.1
        scnView.scene?.rootNode.addChildNode(joint)
        return joint
    }
    
    func removeNode(node: SCNNode){
        node.removeFromParentNode()
    }
    
    func spawnRect() -> SCNNode{
        print("spawning rectangle")
        let scnView = viewController.view as! SCNView
        let rectangleGeometry = SCNBox(width: 5, height: 5, length: 5, chamferRadius: 0)
        let rectangleNode = SCNNode(geometry: rectangleGeometry)
        scnView.scene?.rootNode.addChildNode(rectangleNode)
        return rectangleNode
    }
    
}
