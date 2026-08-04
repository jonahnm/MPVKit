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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libass.xcframework.zip",
            checksum: "969fd5cc692d76fbaba83335f946485d999b2ad1bbc7415978cd022573cf8fa2"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_api.xcframework.zip",
            checksum: "2dff58cf4e9e03ee45b30a9b1bcf7fec305f92de1b97df38fc2924860b144e50"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_api_utility",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_api_utility.xcframework.zip",
            checksum: "340cab3ab431153ea7a035559863783ce6f0b4058b7a7ad88108c567f13b0489"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_common",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_common.xcframework.zip",
            checksum: "3141daf60461b40ca9d48704b0186d0bc5d49243268f24d6b4b8549a649a9e2f"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_enhancement",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_enhancement.xcframework.zip",
            checksum: "5d44f92371216ea19e2a46dfbf4dd6e46fa48af497b857739d58726f9ec492bf"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_extract",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_extract.xcframework.zip",
            checksum: "f31f50b48efccf4940cbfa30d61df257a92aca2e77c2b671b7d796745437ad20"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_pipeline.xcframework.zip",
            checksum: "73a5cdf8467b96f65bd32f50186849f5cd9f03c4c72ddfdc34d65754b266ff02"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pipeline_cpu",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_pipeline_cpu.xcframework.zip",
            checksum: "d893844f1c2a9d1bbc3becbbb15b4e8d38add23403fa16263122dba4dfc19731"
        ),
        .binaryTarget(
            name: "Liblcevc_dec_pixel_processing",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Liblcevc_dec_pixel_processing.xcframework.zip",
            checksum: "358103ef2c787a9b9758696ab9f16fab9a50b4b9b4913ae2881aed86479c44ae"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libavcodec.xcframework.zip",
            checksum: "d1c8227b0950163d36593090838a4bf34b043fc84806064e5e10e5707924d683"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libavdevice.xcframework.zip",
            checksum: "876133c6e741dbfa964d0fc830850b77955300f3bcf945e7436b9f08862d1ed1"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libavformat.xcframework.zip",
            checksum: "d733ee443f671ae94638d7d05d187390d39e987a38306c4a4a15e9d44ff9781f"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libavfilter.xcframework.zip",
            checksum: "2b7b441ef8c6d63486cdd7155e8570b1aa95982a0f41335b07bfd8974418b899"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libavutil.xcframework.zip",
            checksum: "0796254c44242ca987952c7d59ea7d624ddc573c630956c490e1e5c89b3f2342"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libswresample.xcframework.zip",
            checksum: "b13fb758195792d8658a149ad96ea18a4e2065c4744da1ac7a472d6be41d9203"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libswscale.xcframework.zip",
            checksum: "6f635dd59b6227879db349a613e9dca7993af06d5e4d2c83ee334beae975b1ec"
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
            url: "https://github.com/jonahnm/MPVKit/releases/download/v1.0.18/Libmpv.xcframework.zip",
            checksum: "484d76d75dd5d34ec4e78cd9b6d74647ba3c1fde8d05218ee525968803abd3e6"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
