// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsRasterCatalogue",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsRasterCatalogue",
            targets: ["MapplsRasterCatalogueWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.4"),
        .package(url: "https://github.com/mappls-api/mappls-api-kit-ios-distribution.git", from: "3.0.0"),
        .package(url: "https://github.com/mappls-api/mappls-map-ios-distribution.git", from: "6.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsRasterCatalogue",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-raster-catalogue/MapplsRasterCatalogue.xcframework-2.0.0.zip",
            checksum: "d9be072fb760a22c9de6a3a9d938a4d324acd7fd0713c1b0638f88f29ec1780f"
        ),
        .target(
            name: "MapplsRasterCatalogueWrapper",
            dependencies: [
                "MapplsRasterCatalogue",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution"),
                .product(name: "MapplsAPIKit", package: "mappls-api-kit-ios-distribution"),
                .product(name: "MapplsMap", package: "mappls-map-ios-distribution")
            ]
        ),
    ]
)
