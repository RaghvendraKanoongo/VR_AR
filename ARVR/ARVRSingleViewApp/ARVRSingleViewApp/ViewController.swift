//
//  ViewController.swift
//  ARVRSingleViewApp
//
//  Created by Raghvendra_Kanoongo on 01/03/22.
//
import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController , ARSCNViewDelegate  {

    @IBOutlet weak var arscnView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        arscnView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arscnView.session.pause()
    }


}

