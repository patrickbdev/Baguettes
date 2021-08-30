// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "BuildTools",
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGen.git", from: "6.4.0"),
    ],
    targets: [.target(name: "BuildTools", path: "")]
)
