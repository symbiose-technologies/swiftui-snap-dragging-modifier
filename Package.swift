// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swiftui-snap-dragging-modifier",
  platforms: [.iOS(.v14), .macOS(.v13)],
  products: [
    .library(
      name: "SwiftUISnapDraggingModifier",
      targets: ["SwiftUISnapDraggingModifier"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/symbiose-technologies/swiftui-support", branch: "sym-dev")
  ],
  targets: [
    .target(
      name: "SwiftUISnapDraggingModifier",
      dependencies: [
        .product(name: "SwiftUISupport", package: "swiftui-support"),
      ]
    ),
    .testTarget(
      name: "SnapDraggingModifierTests",
      dependencies: ["SwiftUISnapDraggingModifier"]
    ),
  ]
)
