//
//  ViewController.swift
//  ARVRTemplate
//
//  Created by Raghvendra_Kanoongo on 01/03/22.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let boxAnchor = try! Experience.loadBox()
        arView.scene.anchors.append(boxAnchor)
    }
}
