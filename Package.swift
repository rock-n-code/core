// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "Core",
            targets: [
                "RockNCodeCore",
                "SwiftExtensions",
                "FoundationExtensions"
            ]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RockNCodeCore",
            dependencies: [
                "SwiftExtensions",
                "FoundationExtensions"
            ],
            path: "Sources/Core"
        ),
        .target(
            name: "SwiftExtensions",
            path: "Sources/Swift"
        ),
        .target(
            name: "FoundationExtensions",
            path: "Sources/Foundation"
        ),
        .testTarget(
            name: "RockNCodeCoreTests",
            dependencies: ["RockNCodeCore"],
            path: "Tests/Core"
        ),
        .testTarget(
            name: "SwiftExtensionsTests",
            dependencies: ["SwiftExtensions"],
            path: "Tests/Swift"
        ),
        .testTarget(
            name: "FoundationExtensionsTests",
            dependencies: ["FoundationExtensions"],
            path: "Tests/Foundation"
        ),
    ]
)
