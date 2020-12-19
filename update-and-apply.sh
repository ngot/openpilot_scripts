#!/usr/bin/env sh

./update-openpilot.sh

cd /data/openpilot

git apply my.patch
