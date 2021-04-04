# Openpilot Patch

## What is it?

A patch to tweak the default setting in the openpilot, includes:

- Extend the network check period to 200 year. 😏
- Disable `selfdrive.updated` process, no more update check.
- Disable the `selfdrive.loggerd.uploader`, which means no videos and logs uploaded anymore.
- Shut down device 30 seconds after car shutdown, no battery drain risk.

## Usage

### files

```
./
├── my.patch # the actuall patch
├── update-and-apply.sh
└── update-openpilot.sh
```


### Update and Apply

SSH into the comma ENO, then execute the following commands:

```sh
cd /data
git clone https://github.com/ngot/openpilot_scripts.git
cd openpilot_scripts
./update-and-apply.sh
```

After that, the comma ENO, will reboot. 

# Right hand drive mount

Due the camera on comma.ai is on the left side, the RHD has problem to detect the driver. A workaround is to mount the device a bit right of the central of the windscreen. In order to make openpilot work properly, the `CAMERA_OFFSET` in `selfdrive/controls/lib/lane_planner.py` need to adjusted to the correct value. The default value is 6cm from the left to the central, that's the distance of the camera to the central. Change the value to the actual value accordingly, for example my camera is 4cm from the right of the central, the value should be `-0.04`.
