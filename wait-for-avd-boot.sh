#!/usr/bin/env bash

OUT=`/sdk/platform-tools/adb shell getprop init.svc.bootanim`
RES="stopped"

while [[ ${OUT:0:7}  != 'stopped' ]]; do
		OUT=`/sdk/platform-tools/adb shell getprop init.svc.bootanim`
		echo 'Waiting for emulator to fully boot...'
		sleep 5
done

echo "Emulator booted!"
