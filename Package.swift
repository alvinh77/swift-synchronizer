// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "swift-synchronizer",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "SynchronizerMacroInterfaces",
            targets: [
                "SynchronizerMacroInterfaces"
            ]
        ),
        .executable(
            name: "SynchronizerMacroClient",
            targets: [
                "SynchronizerMacroClient"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-syntax.git",
            from: "510.0.2"
        ),
    ],
    targets: [
        .macro(
            name: "SynchronizerMacroImplementation",
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
        .executableTarget(
            name: "SynchronizerMacroClient",
            dependencies: ["SynchronizerMacroInterfaces"]
        ),
        .target(
            name: "SynchronizerMacroInterfaces",
            dependencies: [
                "SynchronizerMacroImplementation"
            ]
        ),
        .target(
            name: "SynchronizerProtocols"
        ),
        .testTarget(
            name: "SynchronizerMacroTests",
            dependencies: [
                "SynchronizerMacroImplementation",
                .product(
                    name: "SwiftSyntaxMacrosTestSupport",
                    package: "swift-syntax"
                ),
            ]
        ),
    ]
)
