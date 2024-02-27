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
    var count : Int = 0
    HStack {
      VStack {
        if(count%2==0){
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .onTapGesture {
                  count=count+1
                }.padding(.bottom, 50)
        }else{
            Model3D(named: "Earth", bundle: realityKitContentBundle)
                .onTapGesture {
                  count=count+1
                }.padding(.bottom, 50)
        }
        Text("Hello, SST!")
      }
      .padding(50)
      VStack {
        HStack {
          Image(systemName: "arrowshape.left")
          Text("Click Here")
        }
        Button("Open Earth") {
            count=count+1
            print(count)
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
