// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MapplsRasterCatalogue",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsRasterCatalogue",
            targets: ["MapplsRasterCatalogue"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MapplsRasterCatalogue",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-raster-catalogue/MapplsRasterCatalogue.xcframework-1.0.1.zip",
            checksum: "8716e5df24def6ef7b46f0c2c91f54d6b41941c99f27e2078fd7dc1043b88ff3"
        )
    ]
)
