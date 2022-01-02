load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    http_archive(
        name = "com_github_brpc_brpc",
        #build_file = "//third_party/brpc/BUILD.bazel",
        strip_prefix = "incubator-brpc-1.0.1",
        #sha256 = "73a22070b9efbbaf0c0383192aa06e345b4591bd",
        #url = "https://github.com/apache/incubator-brpc/archive/refs/tags/1.0.0.tar.gz"
		url = "https://github.com/zhangjun/incubator-brpc/archive/refs/tags/1.0.1.zip",
		sha256 = "453b6e68265168136fb1d907efac57bf64af9f19c1c99545bd279b4c6d6cfafe",
    )
