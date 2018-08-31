// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FluentMySQL",
    products: [
        .library(name: "FluentMySQL", targets: ["FluentMySQL"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.0.0"),

        // Swift ORM framework (queries, models, and relations) for building NoSQL and SQL database integrations.
        .package(url: "https://github.com/mixio/fluent.git", from: "table-aliases-and-resultset-occurrences"),

        // 🐬 Pure Swift MySQL client built on non-blocking, event-driven sockets.
        .package(url: "https://github.com/mixio/mysql.git", from: "table-aliases-and-resultset-occurrences"),
    ],
    targets: [
        .target(name: "FluentMySQL", dependencies: ["Async", "FluentSQL", "MySQL"]),
        .testTarget(name: "FluentMySQLTests", dependencies: ["FluentBenchmark", "FluentMySQL"]),
    ]
)
