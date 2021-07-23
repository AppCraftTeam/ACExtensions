// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACExtensions",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ACExtensions",
            targets: ["ACExtensions"]),
    ],
    targets: [
        .target(
            name: "ACExtensions",
            dependencies: []),
        .testTarget(
            name: "ACExtensionsTests",
            dependencies: ["ACExtensions"])
    ]
)
