//  ViewController.swift
//  WorldTrackingApp2.0
//  Created by Raghvendra_Kanoongo on 01/03/22.
import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    
    @IBOutlet weak var arscnView: ARSCNView!
    @IBOutlet weak var sliderX: UISlider!
    @IBOutlet weak var sliderY: UISlider!
    @IBOutlet weak var sliderZ: UISlider!
    let configuration = ARWorldTrackingConfiguration()
    
    @IBAction func addButton(_ sender: Any) {
        
        showShape()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showShape(){
        let node = SCNNode()
        
        node.geometry = SCNSphere(radius: 0.06)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        node.position = SCNVector3(sliderX.value, sliderY.value, sliderZ.value)
        node.name = "Sphere"
        arscnView.scene.rootNode.addChildNode(node)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        arscnView.session.pause()
        arscnView.scene.rootNode.enumerateChildNodes{
            (node, _) in
            if node.name == "Sphere"  {
                node.removeFromParentNode()
            }
        }
        arscnView.session.run(configuration, options: [.resetTracking])
    }
    
}

