workspace(name = "ann-server")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "rules_python",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.2/rules_python-0.0.2.tar.gz",
    strip_prefix = "rules_python-0.0.2",
    sha256 = "b5668cde8bb6e3515057ef465a35ad712214962f0b3a314e551204266c7be90c",
)

load("//third_party/brpc:workspace.bzl", brpc = "repo")
load("//third_party/protobuf:workspace.bzl", protobuf = "repo")

brpc()
protobuf()

skylib_version = "1.1.1"
http_archive(
    name = "bazel_skylib",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format (skylib_version, skylib_version),
)

http_archive(
    name = "com_github_google_leveldb",
    build_file = "//third_party/systemlib:leveldb.BUILD",
    strip_prefix = "leveldb-a53934a3ae1244679f812d998a4f16f2c7f309a6",
    url = "https://github.com/google/leveldb/archive/a53934a3ae1244679f812d998a4f16f2c7f309a6.tar.gz"
    # url = "https://github.com/google/leveldb/archive/refs/tags/1.20.tar.gz",
)

new_local_repository(
    name = "openssl",
    path = "/usr",
    build_file = "//third_party/systemlib:openssl.BUILD",
)

new_local_repository(
    name = "openssl_macos",
    build_file = "//third_party/systemlib:openssl.BUILD",
    path = "/usr/local/opt/openssl",
)

bind(
    name = "ssl",
    actual = "@openssl//:ssl"
)

bind(
    name = "ssl_macos",
    actual = "@openssl_macos//:ssl"
)

new_local_repository(
    name = "zlib",
    build_file = "//third_party/systemlib:zlib.BUILD",
    path = "/usr",
)

http_archive(
    name = "com_github_gflags_gflags",
    strip_prefix = "gflags-2.2.2",
	url = "https://github.com/gflags/gflags/archive/refs/tags/v2.2.2.tar.gz",
)

bind(
    name = "gflags",
    actual = "@com_github_gflags_gflags//:gflags",
)
