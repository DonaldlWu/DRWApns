// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DRWApns",
    dependencies: [
        // Perfect apns detail please see "https://www.perfect.org/"
        .package(url:"https://github.com/PerfectlySoft/Perfect-Notifications.git", from: "3.0.4"),
        // ColorizeSwift
        .package(url: "https://github.com/mtynior/ColorizeSwift.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "DRWApns",
            dependencies: ["PerfectNotifications", "ColorizeSwift"])
    ]
)
