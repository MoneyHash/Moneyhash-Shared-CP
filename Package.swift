// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoneyHashSharedCP",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MoneyHashShared",
            targets: ["MoneyHashShared"]
        )
    ],
    targets: [
        // Cross-platform (Flutter / React Native) build of MoneyHashShared: the
        // `MoneyHashShared-cocoapods.xcframework.zip` asset of the mobile-one release.
        .binaryTarget(
            name: "MoneyHashShared",
            url: "https://github.com/MoneyHash/Moneyhash-Shared-CP/releases/download/4.2.2/MoneyHashShared.xcframework.zip",
            checksum: "REPLACE_WITH_CHECKSUM"
        )
    ]
)
