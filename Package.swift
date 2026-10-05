// swift-tools-version:5.9
import PackageDescription

// MobileCore is built from MTS-LLC/mm-web-sdk (packages/mobile-core, Kotlin Multiplatform). That repo is private, so
// SPM can't download its release assets; this repo exists only to host the zipped XCFramework in public releases.
// To release: attach MobileCore.xcframework.zip to a release tagged `<version>` here, then update `version` and
// `checksum` below (`swift package compute-checksum MobileCore.xcframework.zip`) and tag the same commit.
let version = "0.2.5"
let checksum = "c739acbe0cc7c13eca0f55991c3bacf13b607dea3c089098df98b2c604aa7a5b"

let package = Package(
    name: "MobileCore",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "MobileCore", targets: ["MobileCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "MobileCore",
            url: "https://github.com/MTS-LLC/mm-mobile-core-ios/releases/download/\(version)/MobileCore.xcframework.zip",
            checksum: checksum
        ),
    ]
)
