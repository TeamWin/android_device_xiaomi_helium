#!/bin/bash

# Extract vold's dependency libraries from your Mi Max.
# Without them, vold won't work.
# Those libraries should be put in the same directory of vold.

filelist="
libbase.so              libhardware.so            libsoftkeymasterdevice.so
libbinder.so            libkeymaster1.so          libsoftkeymaster.so
libc++.so               libkeymaster_messages.so  libsysutils.so
libdiskconfig.so        libkeystore_binder.so     libutils.so
libf2fs_sparseblock.so  liblogwrap.so             libwpa_client.so
libhardware_legacy.so   libnetutils.so
"

for file in ${filelist};
	do
		adb pull /system/lib64/${file}
	done

