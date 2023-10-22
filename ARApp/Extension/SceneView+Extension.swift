//
//  SceneView+Extension.swift
//  ARApp
//
//  Created by Shumpei Horiuchi on 2023/10/22.
//

import Foundation
import ARKit

class SceneView: ARSCNView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Show statistics such as fps and timing information
        showsStatistics = true
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented at SceneView Extension")
    }
}
