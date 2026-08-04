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
                "Liblcevc_dec_api", "Liblcevc_dec_api_utility", "Liblcevc_dec_common", "Liblcevc_dec_enhancement",
                "Liblcevc_dec_extract", "Liblcevc_dec_pipeline", "Liblcevc_dec_pipeline_cpu", "Liblcevc_dec_pixel_processing"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libass.xcframework.zip",
            checksum: "1f9c2a6d6affa66f9993a45d16f06522a00f2fc4405dc914d0d3f9477603f39e"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_api.xcframework.zip",
            checksum: "1071d3fff5b62a83c5af40c41435cdd0201a4b261c5a83e7564ead10991f8a6b"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_api_utility",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_api_utility.xcframework.zip",
            checksum: "9b955e71aa94b716c5125623814e3bf13eaf81caa3374b70c70b2d1b4c920a4d"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_common",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_common.xcframework.zip",
            checksum: "01e28cd994a6f54ea94373e18fc913460847dfeba5bdf0748651e1dc96ec03fa"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_enhancement",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_enhancement.xcframework.zip",
            checksum: "a6af4f299bb57190c3bbf87bb1a19af37d008dc4a2be2d36e189bde27d1cbf04"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_extract",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_extract.xcframework.zip",
            checksum: "a6a874762931574c9469081e061c9854859c8e9ec39e2124bfa291dfb9c95ee3"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_pipeline.xcframework.zip",
            checksum: "131dbce47828d8afe544849e36841ed6743d8ad362e1bc07372e94b9ae127541"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline_cpu",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_pipeline_cpu.xcframework.zip",
            checksum: "1f2b65ec140a903e8f111e7898159f9743feea75ba0940a97f37c0f69025905e"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pixel_processing",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Liblcevc_dec_pixel_processing.xcframework.zip",
            checksum: "35304ddf1f7d7634757b2f9365d54abcdece0e677a5aeaa08776868f125cad55"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libavcodec.xcframework.zip",
            checksum: "4ba72995bc6c4b7634f01b773d4dc2f10bb9e9d8850bb0b029e260647e9a7b5f"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libavdevice.xcframework.zip",
            checksum: "7b4de29d21540ce79caddfb626ab882269cebdd285ff7fdc2112bd8b23eedcef"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libavformat.xcframework.zip",
            checksum: "2255687c42dfb653e1865e48fd862cf2cbfdf786da181f325af29e7f6f4da6c4"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libavfilter.xcframework.zip",
            checksum: "87d9e3b09d54a5d3e8758274d32bc2cd3df73fde790abf51f25a66d666d83de9"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libavutil.xcframework.zip",
            checksum: "ccd9eab2eb647a6fb3eca3b36a48743e4b32a661934a7efa0215f5005e4e2d95"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libswresample.xcframework.zip",
            checksum: "17d4b76cbddf3ead08db93d7fcedb4246e027477470c694dd3c4ceaf4dad75fe"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libswscale.xcframework.zip",
            checksum: "85b6c355de360c7ad0a36cfdc2625a5caba26caa09f7a4a6f2779e202f2d6b57"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.19/Libmpv.xcframework.zip",
            checksum: "c8789e804bd968f553320097ca2c7cc001e63b452c21904299c6c3c4f9fbaec6"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
