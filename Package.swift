// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "SwiftSynchronizer",
    platforms: [.iOS(.v15), .macOS(.v10_15)],
    products: [
        .library(
            name: "SwiftSynchronizer",
            targets: [
                "Synchronizer",
                "SynchronizerProtocols"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-syntax.git",
            branch: "main"
        )
    ],
    targets: [
        .macro(
            name: "SynchronizerMacro",
            dependencies: [
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftCompilerPlugin", 
                    package: "swift-syntax"
                )
            ]
        ),
        .target(
            name: "Synchronizer",
            dependencies: [
                "SynchronizerMacro"
            ]
        ),
        .target(
            name: "SynchronizerProtocols"
        )
    ]
)
