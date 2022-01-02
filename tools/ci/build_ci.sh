#!/bin/bah

if [ -z "$TASK" ]; then
    echo "TASK must be set"
    exit 1
fi

if [ "$TASK" = "compile-with-bazel" ]; then
    bazel build -j 12 //...
fi
