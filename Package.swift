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
            url: "https://github.com/MoneyHash/Moneyhash-Shared-CP/releases/download/4.2.3/MoneyHashShared.xcframework.zip",
            checksum: "fa90d03358a1373ed80971e9c5a47721429fb9feee56bc4449c2a6befe2f43ed"
        )
    ]
)
