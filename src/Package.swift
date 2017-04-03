import PackageDescription

let package = Package(
    name: "spinswift",
    dependencies: [
       	 .Package(url: "../modules/CGSL", majorVersion: 1)
    ]

)
