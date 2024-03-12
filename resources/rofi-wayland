#!/usr/bin/env bash

sudo apt install -y bison flex

cd ~/Downloads

git clone https://github.com/lbonn/rofi.git
cd rofi
meson setup build && ninja -C build
sudo ninja -C build install

cd ..
rm -rf rofi



