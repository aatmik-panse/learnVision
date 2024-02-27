//
//  openEarth.swift
//  learnVision
//
//  Created by Aatmik Panse on 26/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct openEarth: View {
  var body: some View {
    RealityView { content in
      do {
          let entity = try await Entity(named: "Earth", in: realityKitContentBundle)
        content.add(entity)
      } catch {
        print("Error loading entity: \(error.localizedDescription)")
      }
    }
  }
}

#Preview {
  openEarth()
}
