// ImmersiveView.swift
// template
// macOS(14.2) with Swift(5.0)
// 22/12/2023
// All rights reserved © Rashadatjou.

import RealityKit
import RealityKitContent
import SwiftUI

struct ImmersiveView: View {
  var body: some View {
    RealityView { content in
      // Add the initial RealityKit content
      if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
        content.add(scene)
      }
    }
  }
}

#Preview {
  ImmersiveView()
    .previewLayout(.sizeThatFits)
}
