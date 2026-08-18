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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libass.xcframework.zip",
            checksum: "23932b764e2eedb6e53203c2c905cf345769451d7eb1dcd01032aa5acc9e6d36"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_api.xcframework.zip",
            checksum: "097cd5b311fd86267ec04e075adcd7d4949cb2513871a33e76cd23f4c2d482c3"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_api_utility",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_api_utility.xcframework.zip",
            checksum: "610a6be86ba4b7dec9f489e1039bf2e6ea88df2c3e80cea46db14abec209f0c3"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_common",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_common.xcframework.zip",
            checksum: "1b1967fbba4f5eb5fb5e0077a98daf88b7fa253c65ebb314e3ae3ad5bd20d792"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_enhancement",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_enhancement.xcframework.zip",
            checksum: "c30f380c2079718576ead020e422d561599581499a7b853d94f9356253b1dda2"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_extract",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_extract.xcframework.zip",
            checksum: "ed1db70a7d668253259c882a5cf1893aa5bc411b319468a8cc525d962da285d1"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_pipeline.xcframework.zip",
            checksum: "853e7e142677db46af8e835476582274e7b2394f03622500ed502239663cc30e"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline_cpu",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_pipeline_cpu.xcframework.zip",
            checksum: "2e0949244557d4a02163193c5ec863e1d9a87ba17585fc2ff9c529c046d03902"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pixel_processing",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Liblcevc_dec_pixel_processing.xcframework.zip",
            checksum: "016a07c9a80a746f1f68c7ff4270fd8d751bc03a8878df4029b154243427a743"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libavcodec.xcframework.zip",
            checksum: "1c11c2d0ea0c314206decb5101dc9941d232e6b1d7b451443a689a4b96863ae6"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libavdevice.xcframework.zip",
            checksum: "4b75f468197163791b8bef403022cc7018273c92f8839851d03975292beda19d"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libavformat.xcframework.zip",
            checksum: "2433778f477cb903f2f2359334a1bdd4df96b873bcfb6f26ecaa5022bb63c40d"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libavfilter.xcframework.zip",
            checksum: "762e1378421fadea44b03847891d3b461e60af31a5a3de3ddaf5ecff718c3834"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libavutil.xcframework.zip",
            checksum: "abec3c1642dfcbfb62744042609b51a71012f6ffc10d917806b719e1d6c27c66"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libswresample.xcframework.zip",
            checksum: "19eaad1943d904db6c68b09f5d4140db98d835f51b20d77ea6d54b3e7a73187f"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libswscale.xcframework.zip",
            checksum: "1e5baabf7dd003df128f68570ebbf3ff959af86054e28446cbcc53baa0d699d7"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.37/Libmpv.xcframework.zip",
            checksum: "318553e94061d8f37b0ade5cc9722536d599cddb0ce9267a457175bed2a3fc51"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
