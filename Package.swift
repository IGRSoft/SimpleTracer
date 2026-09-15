// swift-tools-version:6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleTracer",
    platforms: [.macOS(.v14), .iOS(.v17)],
    products: [
        .library(
            name: "SimpleTracer",
            targets: ["SimpleTracer"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/IGRSoft/SimplePing.git",
            from: "0.1.1")
    ],
    targets: [
        .target(
            name: "SimpleTracer",
            dependencies: [.product(name: "SimplePing", package: "SimplePing")]
        )
    ],
    swiftLanguageModes: [.v6]
)
