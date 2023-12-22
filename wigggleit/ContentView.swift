//
//  ContentView.swift
//  wigggleit
//
//  Created by Wolf on 22/12/2023.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
  // - State
  @State
  private var showImmersiveSpace = false

  @State
  private var immersiveSpaceIsShown = false

  // - Environment
  @Environment(\.openImmersiveSpace)
  var openImmersiveSpace

  @Environment(\.dismissImmersiveSpace)
  var dismissImmersiveSpace

  // - Body 
  var body: some View {
    VStack {
      Model3D(
        named: "Scene",
        bundle: realityKitContentBundle
      )
      .padding(.bottom, 50)

      Text("Hello, world!")

      Toggle(
        "Show Immersive Space",
        isOn: $showImmersiveSpace
      )
      .toggleStyle(.button)
      .padding(.top, 50)
    }
    .padding()
    .onChange(of: showImmersiveSpace) { _, newValue in
      Task {
        if immersiveSpaceIsShown {
          await dismissImmersiveSpace()
          immersiveSpaceIsShown = false
          return
        }

        guard newValue else { return }

        switch await openImmersiveSpace(id: "ImmersiveSpace") {
        case .opened:
          immersiveSpaceIsShown = true
        case .error, .userCancelled:
          fallthrough
        @unknown default:
          immersiveSpaceIsShown = false
          showImmersiveSpace = false
        }
      }
    }
  }
}

#Preview(windowStyle: .automatic) {
  ContentView()
}
