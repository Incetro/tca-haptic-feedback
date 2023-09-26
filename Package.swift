// swift-tools-version:5.5
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
        .package(
            name: "TCA",
            url: "https://github.com/monession/tca",
            branch: "fix/case_path"
        )
    ],
    targets: [
        .target(
            name: "TCAHapticFeedback",
            dependencies: [
                .product(name: "TCA", package: "TCA")
            ]
        )
    ]
)
