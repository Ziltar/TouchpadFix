#!/bin/bash
echo 'YOUR_PASSWORD_HERE' | sudo -S modprobe -r i2c_hid_acpi && sudo -S modprobe  i2c_hid_acpi
