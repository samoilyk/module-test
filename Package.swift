// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "ModulTest",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ModulTest",
            targets: ["ModulTest"])
    ],
    dependencies: [
            .package(name: "FuntastyKit", url: "https://github.com/thefuntasty/FuntastyKit", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "ModulTest",
            dependencies: [
                .product(name: "FuntastyKit", package: "FuntastyKit")
            ],
            path: "ModulTest/Sources"
        )
    ]
)
