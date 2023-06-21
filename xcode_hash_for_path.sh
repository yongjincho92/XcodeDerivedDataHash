#!/bin/bash

script_dir=$( cd "$(dirname ${BASH_SOURCE:-$0})" ; pwd -P )
clang -Wno-everything -fobjc-arc -fmodules -framework Foundation -framework Security $script_dir/xcode_hash_for_path.m -o $script_dir/xcode_hash_for_path.bin
$script_dir/xcode_hash_for_path.bin $1
rm -rf $script_dir/xcode_hash_for_path.bin