// WigggleitApp.swift
// wigggleit
// macOS(14.2) with Swift(5.0)
// 22/12/2023
// All rights reserved © Rashadatjou.

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
