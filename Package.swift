// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Core",
    products: [
        .library(
            name: "Core",
            targets: [
                "CoreSwift",
//                "CoreFoundation"
                "SwiftExtensions",
                "FoundationExtensions"
            ]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CoreSwift",
        .target(
            name: "SwiftExtensions",
            path: "Sources/Swift"
        ),
        .target(
            name: "FoundationExtensions",
            path: "Sources/Foundation"
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["CoreSwift"],
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
