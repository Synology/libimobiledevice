#!/bin/bash

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

umount /volume1/AppleDevice
sleep 3;

mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "A device is mounted successfully. Please reopen FileStation."
fi

sleep 20;
mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "A device is mounted successfully. Please reopen FileStation."
fi

sleep 20;
mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "A device is mounted successfully. Please reopen FileStation."
fi
