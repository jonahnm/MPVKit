// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Metal"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AppKit", .when(platforms: [.macOS])),
                .linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libdav1d", "Libuavs3d",
                "Liblcevc_dec_api", "Liblcevc_dec_api_utility", "Liblcevc_dec_common",
                "Liblcevc_dec_enhancement", "Liblcevc_dec_extract", "Liblcevc_dec_pipeline",
                "Liblcevc_dec_pipeline_cpu", "Liblcevc_dec_pixel_processing",
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("Security"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
                .linkedLibrary("vvdec"),
            ]
        ),

        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libunibreak.xcframework.zip",
            checksum: "001087c0e927ae00f604422b539898b81eb77230ea7700597b70393cd51e946c"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfreetype.xcframework.zip",
            checksum: "f2840aba1ce35e51c0595557eee82c908dac8e32108ecc0661301c06061e051c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfribidi.xcframework.zip",
            checksum: "4a55513792ef7a17893875f74cc84c56f3657e8768c07a7a96f563a11dc4b743"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libharfbuzz.xcframework.zip",
            checksum: "91558d8497d9d97bc11eeef8b744d104315893bfee8f17483d8002e14565f84b"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libass.xcframework.zip",
            checksum: "5e1b44991a5b253ef160fc270bc372997e84c8187b0be973932142c3b52d0a3c"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.4.0/Libbluray.xcframework.zip",
            checksum: "bc037d34e2b0b5ab7f202fb371f5fb298136cc66fdf406c2172185d06f53f18d"
        ),

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-xcode/Libuavs3d.xcframework.zip",
            checksum: "1e69250279be9334cd2f6849abdc884c8e4bb29212467b6f071fdc1ac2010b6b"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.1/MoltenVK.xcframework.zip",
            checksum: "9bd1ca1e4563bacd25d6e55d37b10341d50b2601bc2684bc332188e79daa2b79"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-2512/Libplacebo.xcframework.zip",
            checksum: "3b2bd57b82549566963effadf0891a141448d9f89c7d48fca0b8f823b854bac6"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/edde746/libdav1d-build/releases/download/1.5.3-neon/Libdav1d.xcframework.zip",
            checksum: "7965ecf274af5448fa830bc1fec4e78257cf1d7509ed1cd95e32023b7bdff965"
        ),

        .binaryTarget(
            name: "Liblcevc_dec_api",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_api.xcframework.zip",
            checksum: "6673f85dba701cc09501119730cadc4f9b87b82b8f0b136e46e5bbd4fcc53c9b"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_api_utility",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_api_utility.xcframework.zip",
            checksum: "c199b73af4e4148a76b14a55466e1936076433eadd444173393697b84a637d18"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_common",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_common.xcframework.zip",
            checksum: "8cddb9bec92aed19c19b597d029e9d75204e6b2c5341077ac060a5258da17a10"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_enhancement",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_enhancement.xcframework.zip",
            checksum: "10300f6e955f1274a142fbb2f437929aa43c6710d05bb665ad12f9040d77d630"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_extract",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_extract.xcframework.zip",
            checksum: "4d104e78a687cd8b316b7a57afa70cfb23c281887cc72c7db0507dc64a03c577"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_pipeline.xcframework.zip",
            checksum: "e3e55277dd6b4649b6685330d3fb5aeea1f129eea3d9720b3ec7c2dedbea1f40"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline_cpu",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_pipeline_cpu.xcframework.zip",
            checksum: "233867a0429343a838888a6cdc616094b877cfe2023feda4a46b212100815b65"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pixel_processing",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Liblcevc_dec_pixel_processing.xcframework.zip",
            checksum: "8f2530011943942e0d650262208e214a4ac14d132ef6b271621343f3f07cab6c"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libavcodec.xcframework.zip",
            checksum: "ccb6c29c9d3e28069d482b1e2cecb44b9ea38bf2c189b28f5a1b462755f4b6f3"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libavdevice.xcframework.zip",
            checksum: "ca3b68dbf0e2b28a117e9b9d7b1d9ac6abdf16a1031015154970bdfac44e879a"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libavformat.xcframework.zip",
            checksum: "44e175aa7829b8bd887d82338668452a988c757fd9bba2d17687a75bf3007aef"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libavfilter.xcframework.zip",
            checksum: "2e3c96dd849e8ba4d5a52982863fa3719197882b1931908b242af357829d45bf"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libavutil.xcframework.zip",
            checksum: "2c5745d913220de1183f67bc445b9c65a57bfc7c90dec695fa163c5339b92317"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libswresample.xcframework.zip",
            checksum: "b95b00e672534dc2c6a4c582bb78e218f0febb90af944227aafee1771082c698"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libswscale.xcframework.zip",
            checksum: "4fc9e8ae9e159c593770cfcdf73264b4616fe4300bf9d1d81834049b3f03c807"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8-xcode/Libuchardet.xcframework.zip",
            checksum: "503202caa0dafb6996b2443f53408a713b49f6c2d4a26d7856fd6143513a50d7"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0-xcode/Libluajit.xcframework.zip",
            checksum: "8e76f267ee100ff5f3bbde7641b2240566df722241cdf8e135be7ef3d29e237a"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.36/Libmpv.xcframework.zip",
            checksum: "437aff293ab277228ecb826f8702a9d9b87f26b6a9be8e2331896e1321fc81b7"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
