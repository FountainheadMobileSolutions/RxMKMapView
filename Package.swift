// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxMKMapView",
    platforms: [.iOS(.v9), .macOS(.v13)],
    products: [
        .library(
            name: "RxMKMapView",
            targets: ["RxMKMapView"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/FountainheadMobileSolutions/RxSwift",
            .upToNextMajor(from: "6.0.0")
        )
    ],
    targets: [
        .target(
            name: "RxMKMapView",
            dependencies: [
		.product(name: "RxSwift", package: "RxSwift"),
		.product(name: "RxCocoa", package: "RxSwift"),
	    ],
            path: "Sources",
            exclude: [])
    ]
)
