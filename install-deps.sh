#!/bin/sh -e

# macOS
if [ "$(uname)" == "Darwin" ]; then
  brew update

  brew list autoconf &>/dev/null || brew install autoconf
  brew list autoconf-archive &>/dev/null || brew install autoconf-archive
  brew list automake &>/dev/null || brew install automake
  brew list libtool &>/dev/null || brew install libtool
  brew list libx11 &>/dev/null || brew install libx11
  brew list libxft &>/dev/null || brew install libxft
  brew list libxext &>/dev/null || brew install libxext
  brew list nasm &>/dev/null || brew install nasm
# Linux
else
  sudo dpkg --add-architecture i386
  sudo apt update

  # Cross-compilation support
  sudo apt install linux-headers-$(uname -r)
  sudo apt install linux-libc-dev:i386
  sudo apt install libc6-dev-i386
  sudo apt install gcc-multilib
  sudo apt install gcc-aarch64-linux-gnu
  sudo apt install g++-multilib
  sudo apt install g++-aarch64-linux-gnu

  # FFmpeg dependencies
  sudo apt install autoconf
  sudo apt install autoconf-archive
  sudo apt install automake
  sudo apt install libtool
  sudo apt install libltdl-dev
  sudo apt install libx11-dev
  sudo apt install libxft-dev
  sudo apt install libxext-dev
  sudo apt install libwayland-dev
  sudo apt install libxkbcommon-dev
  sudo apt install libegl1-mesa-dev
  sudo apt install libibus-1.0-dev
  sudo apt install nasm
  sudo apt install pkg-config
fi