// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TCAHapticFeedback",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "TCAHapticFeedback",
            targets: [
                "TCAHapticFeedback"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Incetro/TCA", .branch("main"))
    ],
    targets: [
        .target(
            name: "TCAHapticFeedback",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "TCA")
            ]
        )
    ]
)
