// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RSSwizzle",
    platforms: [.watchOS(.v4), .iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RSSwizzle",
            targets: ["RSSwizzle"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RSSwizzle",
            path: "RSSwizzle",
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "RSSwizzleTests",
            dependencies: ["RSSwizzle"],
            path: "RSSwizzleTests/RSSwizzleTests"
        ),
    ],
    cLanguageStandard: .gnu99
)
