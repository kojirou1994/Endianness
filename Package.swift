// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Endianness",
  products: [
    .library(name: "Endianness", targets: ["Endianness"]),
  ],
  targets: [
    .target(name: "Endianness"),
    .testTarget(
      name: "EndiannessTests",
      dependencies: [
        .target(name: "Endianness"),
      ]
    ),
  ]
)
