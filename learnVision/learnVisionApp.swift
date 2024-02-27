//
//  learnVisionApp.swift
//  learnVision
//
//  Created by Aatmik Panse on 26/02/24.
//

import SwiftUI

@main
struct learnVisionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)
        ImmersiveSpace(id:"Earth"){
            openEarth()
        }
    }
}
