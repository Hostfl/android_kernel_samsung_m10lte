#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make CONFIG_SECTION_MISMATCH_WARN_ONLY=y ARCH=arm64 m10ltesea_00_defconfig
make CONFIG_SECTION_MISMATCH_WARN_ONLY=y ARCH=arm64 -j16

mv arch/arm64/boot/Image $(pwd)/AnyKernel3

zip PKernel.zip $(pwd)/AnyKernel
