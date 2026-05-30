// swift-tools-version: 5.9
//
// awesome_notifications — iOS plugin
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
        .iOS("15.0")
    ],
    products: [
        .library(
            name: "awesome-notifications",
            targets: ["awesome_notifications"]
        )
    ],
    dependencies: [
        // Awesome Notifications iOS core. Points at the fork that adds
        // Swift Package Manager support. No tags published yet, so we
        // track the `main` branch (SPM pins the exact commit in
        // Package.resolved).
        .package(
            url: "https://github.com/rmasarovic/IosAwnCore.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "awesome_notifications",
            dependencies: [
                .product(name: "IosAwnCore", package: "IosAwnCore")
            ]
        )
    ]
)
