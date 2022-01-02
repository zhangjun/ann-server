
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
#http_archive(
#        name = "com_google_protobuf",
#        # sha256 = "d7a221b3d4fb4f05b7473795ccea9e05dab3b8721f6286a95fffbffc2d926f8b",
#		build_file = "//third_party/protobuf:protobuf.BUILD",
#        strip_prefix = "protobuf-3.19.1",
#        urls = [
#            "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v3.19.1.tar.gz",
#        ],
#    )

    http_archive(
        name = "com_google_protobuf",
        strip_prefix = "protobuf-3.18.1",
        type = "tar.gz",
        # url = "https://github.com/protocolbuffers/protobuf/archive/v3.18.1.zip",
		url = "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v3.18.1.tar.gz",
    )
