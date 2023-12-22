//
//  ImmersiveView.swift
//  wigggleit
//
//  Created by Wolf on 22/12/2023.
//

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
