#!/bin/sh

current_date=$(date +"%m-%d-%Y")

ssh pi@192.168.0.200 “sudo dd if=/dev/mmcblk0 bs=1M | gzip -” | dd of=/srv/dev-disk-by-label-Backups/Backups/Rpi-PiHole/backup_${current_date}.gz