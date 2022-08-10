//
//  ContentView-Model.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 8/9/22.
//

import Foundation

enum AppsType: String {
case pinchAndZoom
case restart
case other
case unknown
}

struct AllAppsModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let imageName: String
    let type: AppsType
}

extension AllAppsModel {
    static func sampleApps() -> [AllAppsModel] {
        [
            AllAppsModel(name: "Restart", imageName: "restart", type: .restart),
            AllAppsModel(name: "Pinch & Zoom", imageName: "pinch-zoom", type: .pinchAndZoom),
            AllAppsModel(name: "Some Other", imageName: "restart", type: .other),
            AllAppsModel(name: "New app", imageName: "restart", type: .unknown)
        ]
    }
}
