//
//  WigggleitApp.swift
//  wigggleit
//
//  Created by Wolf on 22/12/2023.
//

import SwiftUI

@main
struct WigggleitApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }

    ImmersiveSpace(id: "ImmersiveSpace") {
      ImmersiveView()
    }
  }
}
