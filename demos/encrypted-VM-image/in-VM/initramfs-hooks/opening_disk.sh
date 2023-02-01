#!/bin/sh

# Saved for RA
key=`/sbin/getting_key`

jindisksetup open ${key} /dev/sda3 jindisk_rootfs

# For jindisksetup-rust
# jindisksetup-rust open -p ${key} -d /dev/sda3 -t jindisk_rootfs

fsck /dev/mapper/jindisk_rootfs
# mount -t ext4 /dev/mapper/jindisk_rootfs /root