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
