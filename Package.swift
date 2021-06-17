// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ModuleCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ModuleCoreResources",
            targets: ["ModuleCoreResources"]
        ),
        .library(
            name: "ModuleCoreFramework",
            targets: ["ModuleCoreFramework"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/thefuntasty/FuntastyKit", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "ModuleCoreResources",
            dependencies: [
                "FuntastyKit"
            ],
            path: "ModuleCore/Sources/ModuleCoreResources"
        ),
        .target(
            name: "ModuleCoreFramework",
            dependencies: [],
            path: "ModuleCore/Sources/ModuleCoreFramework"
        ),
        .testTarget(
            name: "ModuleCoreTests",
            dependencies: [
                "ModuleCoreResources"
            ],
            path: "ModuleCore/Tests/ModuleCoreTests"
        )
    ]
)
