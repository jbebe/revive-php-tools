#!/bin/bash

cd debian/debian-0.91/dist
dir=$PWD
mkdir mnt
sudo losetup -o 512 /dev/loop0 $dir/packages.raw
sudo mount /dev/loop0 $dir/mnt
sudo mkdir $dir/mnt/packages
sudo cp $dir/packages/*/*.deb $dir/mnt/packages
sudo umount /dev/loop0
sudo losetup -d /dev/loop0
rmdir $dir/mnt
