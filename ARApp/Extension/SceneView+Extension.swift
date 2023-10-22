//
//  SceneView+Extension.swift
//  ARApp
//
//  Created by Shumpei Horiuchi on 2023/10/22.
//

import Foundation
import ARKit

enum debugOptions {
    case showBoundingBoxes
    case showWireframe
    case renderAsWireframe
    case showSkeletons
    case showCreases
    case showConstraints
    case showCameras
    case showLightInfluences
    case showLightExtents
    case showPhysicsShapes
    case showPhysicsFields
    case showFeaturePoints
    case showWorldOrigin
    case showStatistics
    case autoEnablesDefaultLighting
    case isJitteringEnabled
}

extension ARSCNView {
    func configureDebugOptions(debugOptionsArray: [debugOptions : Bool]) {
        guard debugOptionsArray.count > 0 else {
            print("⚠️WARNING: DebugOptions.count is nil!")
            print("at configureDebugOptions() of sceneView+Extension.swift")
            return
        }
        for item in debugOptionsArray {
            let key = item.key
            let value = item.value
            switch key {
            case .showBoundingBoxes:
                // Display the bounding boxes for any nodes with content.
                if value {
                    debugOptions = .showBoundingBoxes
                }
            case .showWireframe:
                // Display geometries in the scene with wireframe rendering.
                if value {
                    debugOptions = .showWireframe
                }
            case .renderAsWireframe:
                // Display only wireframe placeholders for geometries in the scene.
                if value {
                    debugOptions = .renderAsWireframe
                }
            case .showSkeletons:
                // Display visualizations of the skeletal animation parameters for relevant geometries.
                if value {
                    debugOptions = .showSkeletons
                }
            case .showCameras:
                // Display visualizations for nodes in the scene with attached cameras and their fields of view.
                if value {
                    debugOptions = .showCameras
                }
            case .showCreases:
                // Display nonsmoothed crease regions for geometries affected by surface subdivision.
                if value {
                    debugOptions = .showCreases
                }
            case .showConstraints:
                // Display visualizations of the constraint objects acting on nodes in the scene.
                if value {
                    debugOptions = .showConstraints
                }
            case .showLightExtents:
                // Display the regions affected by each SCNLight object in the scene.
                if value {
                    debugOptions = .showLightExtents
                }
            case .showLightInfluences:
                // Display the locations of each SCNLight object in the scene.
                if value {
                    debugOptions = .showLightInfluences
                }
            case .showPhysicsFields:
                // Display the regions affected by each SCNPhysicsField object in the scene.
                if value {
                    debugOptions = .showPhysicsFields
                }
            case .showPhysicsShapes:
                // Display the physics shapes for any nodes with attached SCNPhysicsBody objects.
                if value {
                    debugOptions = .showPhysicsShapes
                }
            case .showFeaturePoints:
                // Display a point cloud showing intermediate results of the scene analysis that ARKit uses to track device position.
                if value {
                    debugOptions = .showFeaturePoints
                }
            case .showWorldOrigin:
                // Display a coordinate axis visualization indicating the position and orientation of the AR world coordinate system.
                if value {
                    debugOptions = .showWorldOrigin
                }
            case .showStatistics:
                if value {
                    showsStatistics = true
                }
            case .autoEnablesDefaultLighting:
                if value {
                    autoenablesDefaultLighting = true
                }
            case .isJitteringEnabled:
                if value {
                    isJitteringEnabled = true
                }
            }
        }
    }
}
