// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tic-Tac-Toe",
    products: [
        .library(
            name: "Tic-Tac-Toe",
            targets: ["Tic-Tac-Toe"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kitura/Swift-SMTP", .upToNextMinor(from: "5.1.0")),    // add the dependency
    ],
    targets: [
        .target(
            name: "Tic-Tac-Toe",
            dependencies: ["SwiftSMTP"],
            path: "Sources"),                                                           // add targets
        .testTarget(                                                                                // note "SwiftSMTP" (NO HYPHEN)
            name: "Tic-Tac-ToeTests",
            dependencies: ["Tic-Tac-Toe"]),
    ]
)
