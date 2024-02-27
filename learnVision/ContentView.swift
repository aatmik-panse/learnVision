//
//  ContentView.swift
//  learnVision
//
//  Created by Aatmik Panse on 26/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
  @Environment (\.openImmersiveSpace) var openImmersiveSpace

  var body: some View {
    HStack {
      VStack {
        Model3D(named: "Scene", bundle: realityKitContentBundle)
//          .onTapGesture {
//            Task {
//              await openImmersiveSpace(id: "earth")
//            }
//          }
          .padding(.bottom, 50)
        Text("Hello, world!")
      }
      .padding(50)
      VStack {
        HStack {
          Image(systemName: "arrowshape.left")
          Text("Click Here")
        }
        Button("Open Earth") {
          Task {
            await openImmersiveSpace(id: "Earth") 
          }
        }
      }
      .padding(.bottom, 75)
    }
    .padding()
  }
}

#Preview(windowStyle: .automatic) {
  ContentView()
}
