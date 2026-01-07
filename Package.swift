// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PulseTrackCore",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "PulseTrackCore", targets: ["PulseTrackCore"]),
    ],
    targets: [
        .target(
            name: "PulseTrackCore",
            path: "Sources/PulseTrackCore"
        ),
        .testTarget(
            name: "PulseTrackCoreTests",
            dependencies: ["PulseTrackCore"],
            path: "Tests"
        ),
    ]
)