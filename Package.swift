// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YapDatabase",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "YapDatabase", targets: ["YapDatabase"])
    ],
    targets: [
        .target(
            name: "CYapDatabase",
            cSettings: [
                .headerSearchPath("private")
            ],
            linkerSettings: [
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++"),
                .linkedFramework("SystemConfiguration")
            ]
        ),
        .target(
            name: "YapDatabase",
            dependencies: ["CYapDatabase"]
        )
    ]
)
