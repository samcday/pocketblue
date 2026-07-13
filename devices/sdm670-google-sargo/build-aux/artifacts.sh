#!/usr/bin/env bash

set -ueo pipefail

# This device deliberately has no direct-ABL flash script. These are ordinary
# PocketBlue partition images intended for a U-Boot/PocketBoot-shaped loader.
for image in fedora_esp.raw fedora_boot.raw fedora_rootfs.raw; do
    test -s "$OUT_PATH/images/$image"
done

install -Dm0644 \
    "$DEVICE_PATH/build-aux/lvm-layout.txt" \
    "$OUT_PATH/LVM-LAYOUT.txt"
