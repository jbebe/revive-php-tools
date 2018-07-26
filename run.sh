#!/bin/bash

echo $PWD
dir=$PWD/debian/debian-0.91/dist
sudo qemu-system-i386 \
    -M pc \
    -boot order=ac \
    -drive file=$dir/base/bootdisk,if=floppy,format=raw \
    -drive file=$dir/debian.raw,if=ide,format=raw \
    -drive file=$dir/packages.raw,if=ide,format=raw \
    -net nic,model=ne2k_pci \
    -serial msmouse \
    -vga std