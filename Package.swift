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
            ]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CoreSwift",
            path: "Sources/Swift"
        ),
//        .target(
//            name: "CoreFoundation",
//            path: "Sources/Foundation"
//        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["CoreSwift"],
            path: "Tests/Swift"
        ),
//        .testTarget(
//            name: "CoreFoundationTests",
//            dependencies: ["CoreFoundation"],
//            path: "Tests/Foundation"
//        )
    ]
)
