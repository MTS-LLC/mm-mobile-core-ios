// swift-tools-version:5.9
import PackageDescription

// MobileCore is built from MTS-LLC/mm-web-sdk (packages/mobile-core, Kotlin Multiplatform). That repo is private, so
// SPM can't download its release assets; this repo exists only to host the zipped XCFramework in public releases.
// To release: attach MobileCore.xcframework.zip to a release tagged `<version>` here, then update `version` and
// `checksum` below (`swift package compute-checksum MobileCore.xcframework.zip`) and tag the same commit.
let version = "0.2.7"
let checksum = "2d1107b10bd9a3841c9b0ada828b000b3585f44ca4a2d052ec9e4fbd900db9f6"

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
