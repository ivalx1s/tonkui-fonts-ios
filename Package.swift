// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "tonkui-fonts",
    platforms: [
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v14),
        .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "TonkUIFonts",
            targets: ["TonkUIFonts"]
        ),
    ],
    targets: [
        .target(
            name: "TonkUIFonts",
			path: "Sources",
            resources: [
                .copy("Fonts/Montserrat/Montserrat-Regular.ttf"),
				.copy("Fonts/Montserrat/Montserrat-Bold.ttf"),
				.copy("Fonts/Montserrat/Montserrat-SemiBold.ttf"),
            ]
        )
    ]
)
