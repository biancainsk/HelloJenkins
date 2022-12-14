#!/bin/bash

if [ ! -d build/Linux/aarch64 ]; then
    mkdir build/Linux/aarch64
fi
# As we are using vcpkg package manager, download and bootstrap it before using.
if [ ! -d vcpkg/vcpkg ]; then
    git clone https://github.com/microsoft/vcpkg.git
    ./vcpkg/bootstrap-vcpkg.sh
fi
# To enable versioning support in vcpkg, this flag must be set before.
export VCPKG_FEATURE_FLAGS=versions
# Save project root directory as we will need it to correctly provide vcpkg path in toolchain
export HELLOWORLD_ROOT_DIRECTORY=$PWD
# Specifiy correct triplet you wish to use. If not specified, vcpkg will choose tirplet automatically based on compiler. 
export VCPKG_TARGET_TRIPLET=arm64-linux
# Environment variable VCPKG_FORCE_SYSTEM_BINARIES must be set on ARM and s390x platforms.
export VCPKG_FORCE_SYSTEM_BINARIES=1
cmake -B build/Linux/aarch64 -G "Ninja" -DCMAKE_BUILD_TYPE=$1 -DCMAKE_TOOLCHAIN_FILE=cmake/Toolchain/x64-ARM-Linux.cmake
cd build/Linux/aarch64
# cmake --build . -- VERBOSE=1
cmake --build .