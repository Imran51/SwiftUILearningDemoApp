//
//  ContentView-Model.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 8/9/22.
//

import Foundation

struct AllAppsModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let imageName: String
    
}

extension AllAppsModel {
    static func sampleApps() -> [AllAppsModel] {
        [
            AllAppsModel(name: "Restart", imageName: "restart"),
            AllAppsModel(name: "Pinch & Zoom", imageName: "restart"),
            AllAppsModel(name: "Some Other", imageName: "restart"),
            AllAppsModel(name: "New app", imageName: "restart"),
        ]
    }
}
