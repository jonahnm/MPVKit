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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libass.xcframework.zip",
            checksum: "fba9da91939feaacab5bf2fd84c090fe0987070888912a0d6e8220f1eaca5c5f"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_api.xcframework.zip",
            checksum: "422004d678e2302e888fd1105d50d8bd227a423593b5eafc61a8a37d921c80b4"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_api_utility",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_api_utility.xcframework.zip",
            checksum: "49e434c5e82e87d3cc8dd3e42345c9aea880bc355f98c748fd4c1bc89de09b28"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_common",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_common.xcframework.zip",
            checksum: "2d943e02c86eb040df56da6074fae8e880c302f455ed952f6e980495d5bb908e"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_enhancement",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_enhancement.xcframework.zip",
            checksum: "3dad2cebfa0d78543eba3b00f83acdd39e4d16c5435252dff012acf8ac513486"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_extract",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_extract.xcframework.zip",
            checksum: "4eb05d469cf017655479e1a9732b577f7fd516222633451d93c037053a8fff57"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_pipeline.xcframework.zip",
            checksum: "94082d77970d97823285afc41aa94331f16e0f934dd9b7fea5eeb1f8d355dc48"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline_cpu",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_pipeline_cpu.xcframework.zip",
            checksum: "4028b15fa4266f5cff17b0a72ca28fc60ab54283732a4d917abfaac329320b17"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pixel_processing",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Liblcevc_dec_pixel_processing.xcframework.zip",
            checksum: "e5f6bc795fb262650ef7cd3a9dfa9e9264d238d676c691714c35ab4158692b17"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libavcodec.xcframework.zip",
            checksum: "4e6ee8bb08d0da8d8232e390cdcf7da40fd57a2f113f47e8c512ea6bfab993f9"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libavdevice.xcframework.zip",
            checksum: "ab0bb6e6e85f1ca950b6cae1ead7295edbd03cfc264e3132406dfd9fa7fc190e"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libavformat.xcframework.zip",
            checksum: "1516aec071208a28da86a511a4889f95a337c1caccf2daede7a538e30d0381ed"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libavfilter.xcframework.zip",
            checksum: "24476334be12a4f9a4c067d625ba3a63fb5c3c0ca7757bc6c6384421b057aac8"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libavutil.xcframework.zip",
            checksum: "e150d5dd24d4499cbcee32a8a8d99b0513d4c306526301ad7c5ab1f0d1830637"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libswresample.xcframework.zip",
            checksum: "36d351d1d17a533697064f0de0be9e0f171177ed35d80447bfc688fd3ea4597e"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libswscale.xcframework.zip",
            checksum: "51c8a595ce671ea159ed3d0e5fb9dcb5da829217491bd55ea0d50052ef8e227f"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.38/Libmpv.xcframework.zip",
            checksum: "cb46154bf39069acd9b6c27544757e4798f6d20574d945821d00325d0fefbb7c"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
