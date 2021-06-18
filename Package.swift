// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ModuleCore",
    platforms: [
        .iOS(.v14)
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
        .binaryTarget(
            name: "ModuleCoreFramework",
            path: "ModuleCore/Sources/ModuleCoreFramework/ModuleCoreFramework.xcframework"
        ),
        .testTarget(
            name: "ModuleCoreResourcesTests",
            dependencies: [
                "ModuleCoreResources"
            ],
            path: "ModuleCore/Tests/ModuleCoreResourcesTests"
        ),
        .testTarget(
            name: "ModuleCoreFrameworkTests",
            dependencies: [
                "ModuleCoreFramework"
            ],
            path: "ModuleCore/Tests/ModuleCoreFrameworktests"
        )
    ]
)
