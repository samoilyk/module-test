// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ModulCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ModulCore",
            targets: ["ModulCore"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/thefuntasty/FuntastyKit", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "ModulCore",
            dependencies: [
                "FuntastyKit"
            ],
            path: "ModulCore/Sources"
        ),
        .testTarget(
            name: "ModulCoreTests",
            dependencies: [
                "ModulCore"
            ],
            path: "ModulCore/ModulCoreTests"
        )
    ]
)
