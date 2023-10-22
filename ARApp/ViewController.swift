//
//  ViewController.swift
//  ARApp
//
//  Created by Shumpei Horiuchi on 2023/10/22.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    let sceneView = ARSCNView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self

        // Create a new scene
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        
        // Set the scene to the view
        sceneView.scene = scene

        sceneView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(sceneView)
        // ARSCNViewを画面いっぱいに広げる制約を設定
        NSLayoutConstraint.activate([
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        let config: [debugOptions : Bool]  =
                            [.showBoundingBoxes : true,
                             .showWireframe : false,
                             .renderAsWireframe : false,
                             .showSkeletons : false,
                             .showCameras : false,
                             .showConstraints : false,
                             .showCreases: false,
                             .showLightInfluences : false,
                             .showLightExtents : false,
                             .showPhysicsFields : false,
                             .showPhysicsShapes : false,
                             .showFeaturePoints : false,
                             .showWorldOrigin : true,
                             .showStatistics : true,
                             .autoEnablesDefaultLighting : true,
                             .isJitteringEnabled : false]

        sceneView.configureDebugOptions(debugOptionsArray: config)
        print(sceneView.debugOptions)

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
