// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Example",
    products: [
        .library(
            name: "CPPExample",
            targets: ["CPPExample"]),
        .library(
            name: "Example",
            targets: ["Example"]),
    ],
    targets: [
        .target(
            name: "CPPExample",
            dependencies: []
        ),
        .target(
            name: "Example",
            dependencies: ["CPPExample"],
            // Note: These flags are to allow importing CPPXLA, it must be importted as
            // @_implementationOnly or it will conflict with other headers.
            swiftSettings: [.unsafeFlags(["-enable-cxx-interop"])]
        ),
        .testTarget(
            name: "ExampleTests",
            dependencies: ["Example"]
            ),
    ]
)
