#!/bin/sh
xmodmap ./keyboard/tpkotoba.xmodmap
echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode > /dev/null
