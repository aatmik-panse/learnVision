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
    var body: some View {
        HStack {
            VStack{
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                
                Text("Hello, world!")
            }
            .padding(50)
            VStack{
                HStack{
                    Image(systemName: "arrowshape.left")
                    Text("Click Here")
                }
            }
            .padding(.bottom,75)
            
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
