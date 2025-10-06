#!/bin/bash
xdg-user-dirs-update
f="$(xdg-user-dir DESKTOP)/live-installer.desktop"
cp -pf /usr/share/applications/live-installer.desktop $(xdg-user-dir DESKTOP)/
chmod 755 "$f"
dbus-launch gio set "$f" "metadata::trusted" true
dbus-launch gio set -t string "$f" metadata::xfce-exe-checksum $(sha256sum "$f" | awk '{print $1}')

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout '0' || true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing' || true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout '0' || true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing' || true
gsettings set org.gnome.settings-daemon.plugins.power idle-dim 'false' || true
gsettings set org.gnome.desktop.session idle-delay '0' || true

xset s off || true
xset dpms 0 0 0 || true
xset -dpms s off || true
xset s noblank || true
