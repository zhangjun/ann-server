FROM ubuntu

LABEL com.zhangjun.image.authors="ewalker.zj@gmail.com"

RUN apt update && \
  apt -qqy install software-properties-common && \	
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
  add-apt-repository -y ppa:deadsnakes/ppa && \
  sudo apt-get update && \
  sudo apt -qqy install gcc-9 g++-9 && \
  echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list && \
  curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add - && \
  sudo apt-get update && \
  sudo apt -qqy install bazel && \
  sudo apt -y upgrade bazel && \
  sudo apt -qqy install vim make cmake curl openjdk-8-jdk git python-dev python3-dev python-numpy python3-numpy python-six python3-six build-essential python-pip python3-pip python-virtualenv swig python-wheel python3-wheel libcurl3-dev libcupti-dev


# go install github.com/bazelbuild/bazelisk@latest
