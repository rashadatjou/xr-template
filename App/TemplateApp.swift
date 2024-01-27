// TemplateApp.swift
// template
// macOS(14.2) with Swift(5.0)
// 22/12/2023
// All rights reserved © Rashadatjou.

import SwiftUI

@main
struct TemplateApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }

    ImmersiveSpace(id: "ImmersiveSpace") {
      ImmersiveView()
    }
  }
}
