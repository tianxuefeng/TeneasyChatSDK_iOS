// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "TeneasyChatSDK_iOS",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "TeneasyChatSDK_iOS",
            targets: ["TeneasyChatSDK_iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "TeneasyChatSDK_iOS",
            dependencies: [
                          .product(name: "Starscream", package: "Starscream")
                      ],
            path: "TeneasyChatSDK_iOS"),
    ],
    swiftLanguageVersions: [.v5]
)
