#!/bin/sh
qemu-system-x86_64 \
    -m 128M \
    -s \
    -append nokaslr \
    -cpu kvm64,+smep \
    -kernel vmlinuz \
    -initrd initramfs.cpio.gz \
    -snapshot \
    -nographic \
    -monitor /dev/null \
    -no-reboot \
    -append "console=ttyS0 nopti nokaslr quiet panic=1"
