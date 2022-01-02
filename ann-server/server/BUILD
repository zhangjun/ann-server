# Description: server.

package(
    default_visibility = [
        "//ann-server:internal",
    ],
    features = ["-layering_check"],
)

filegroup(
    name = "all_files",
    srcs = glob(
        ["**/*"],
        exclude = [
            "**/METADATA",
            "**/OWNERS",
        ],
    ),
)

cc_library(
    name = "server_lib",
    srcs = ["server.cc"],
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "@com_github_brpc_brpc//:brpc",
    ],
)

cc_binary(
    name = "server",
    stamp = 1,
    visibility = [
        "//ann-server:internal",
        #"//visibility:public",
    ],
    deps = [
        ":server_lib",
        #"@com_github_brpc_brpc//:brpc",
    ],
)
