// swift-tools-version: 5.9
//
// awesome_notifications — macOS plugin
//
// Swift Package Manager manifest. Sources live in
// `Sources/awesome_notifications` and are shared with the CocoaPods
// integration (awesome_notifications.podspec), which points its
// `source_files` at the same directory.
//
import PackageDescription

let package = Package(
    name: "awesome_notifications",
    platforms: [
        .macOS("10.14")
    ],
    products: [
        .library(
            name: "awesome-notifications",
            targets: ["awesome_notifications"]
        )
    ],
    dependencies: [
        // Flutter (macOS) framework, provided by Flutter's SPM integration
        // as a sibling package at build time.
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "awesome_notifications",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
