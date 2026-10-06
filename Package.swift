// swift-tools-version:5.9
import PackageDescription

// MobileCore is built from MTS-LLC/mm-web-sdk (packages/mobile-core, Kotlin Multiplatform). That repo is private, so
// SPM can't download its release assets; this repo exists only to host the zipped XCFramework in public releases.
// To release: attach MobileCore.xcframework.zip to a release tagged `<version>` here, then update `version` and
// `checksum` below (`swift package compute-checksum MobileCore.xcframework.zip`) and tag the same commit.
let version = "0.2.6"
let checksum = "d0da5dc2d71bde924d735f4178ee063a0d2ad15bf5c9dcbf50e465f15580d6a9"

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
