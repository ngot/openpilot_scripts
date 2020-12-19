#!/usr/bin/env sh

./update-openpilot.sh
cd /data/openpilot
git apply /data/openpilot_scripts/my.patch
reboot
