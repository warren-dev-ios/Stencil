// swift-tools-version:4.1
import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
    .library(name: "Stencil", targets: ["Stencil"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", from: "0.9.0"),
    .package(url: "git@github.com:warren-dev-ios/Spectre.git", .branch("master"))
  ],
  targets: [
    .target(name: "Stencil", dependencies: [
      "PathKit"
    ], path: "Sources"),
    .testTarget(name: "StencilTests", dependencies: [
      "Stencil",
      "Spectre"
    ])
  ]
)
