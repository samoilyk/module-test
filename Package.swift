// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "ModulCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ModulCore",
            targets: ["ModulCore"])
    ],
    dependencies: [
            .package(name: "FuntastyKit", url: "https://github.com/thefuntasty/FuntastyKit", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "ModulCore",
            dependencies: [
                .product(name: "FuntastyKit", package: "FuntastyKit")
            ],
            path: "ModulCore"
        )
    ]
)
