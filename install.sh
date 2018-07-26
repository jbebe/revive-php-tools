#!/bin/bash

pushd $PWD
sudo apt-get -y install qemu-system-x86 qemu-utils 
tar xf debian-0.91.tar
cd debian/debian-0.91/dist
qemu-img create -f raw debian.raw 50M
qemu-img create -f raw packages.raw 50M
gunzip base/basedsk1.gz base/basedsk2.gz base/bootdisk.gz
popd
./run.sh