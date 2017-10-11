TeamWin Recovery Project

Device configuration for Xiaomi Mi Max (helium)
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CHIPSET | Qualcomm MSM8956 Snapdragon 650 / Qualcomm MSM8976 Snapdragon 652
CPU     | Quad-core 1.4 GHz Cortex-A53 & Dual-core 1.8 GHz Cortex-A72 <br/> Quad-core 1.4 GHz Cortex-A53 & Quad-core 1.8 GHz Cortex-A72
GPU     | Adreno 510
Memory  | 3/4 GB
Shipped Android Version | Android 6.0 with MIUI
Storage | 64/128 GB
Battery | 4850 mAh (non-removable)
Dimensions | 173.1 x 88.3 x 7.5 mm
Display | 1080 x 1920 pixels 6.44"
Rear Camera  | 16.0 MP
Front Camera | 5.0 MP
Release Date | May 2016

![Xiaomi Mi Max](http://cdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-mi-max--1.jpg "Xiaomi Mi Max")

## How-to compile it:

Add to `.repo/local_manifests/helium.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/xiaomi/helium" name="android_device_xiaomi_helium" remote="TeamWin" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_helium-eng
make -j8 recoveryimage
```

Kernel sources are available at: https://github.com/LineageOS/android_kernel_xiaomi_msm8956
