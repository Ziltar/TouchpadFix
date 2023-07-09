# Fix Touchpad Issues on a Dell Laptop

Problem: Scrolling and other gestures do not work. To fix this, you need to reload `i2c_hid_acpi` after every unlock.

## Fix

1. Clone this Repo
2. Move the `reloadTouchpad.sh` to a safe location and replace `YOUR_PASSWORD_HERE` with your password
3. Move `unlock.service` to `~/.config/systemd/user` (if this directory does not exists create it)
4. Replace `PATH_TO_YOUR_RELOADTOUCHPAD_SH` with the path to your `reloadTouchpad.sh` in the `unlock.service` file
5. Move `reloadTouchpadDriverOnBoot.service` to `/etc/systemd/system`
6. Replace `PATH_TO_YOUR_RELOADTOUCHPAD_SH` with the path to your `reloadTouchpad.sh` in the `reloadTouchpadDriverOnBoot.service` file
7. Copy `lockheed` to `/usr/local/bin`
8. Make `lockheed` executable: `sudo chmod +x lockheed`
9. Enable both services:

   ```
   systemctl --user enable unlock.service
   sudo systemctl enable reloadTouchpadDriverOnBoot.service
   ```
10. Reboot and your touchpad should now support scrolling & gestures.

## Caveats

Fix tested with Arch (6.4.2-arch1-1) and Gnome 44.3. **USE THIS AR YOUR OWN RISK!**

Thanks to [gogama](https://github.com/gogamagogam) for creating [lockheed](https://github.com/gogama/lockheed)
