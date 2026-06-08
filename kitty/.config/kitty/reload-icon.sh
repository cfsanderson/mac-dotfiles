#!/bin/bash
# Replace Kitty's custom icon and flush the icon cache.
# Usage: ./reload-icon.sh
# A restart is required afterward for the change to take effect.

ICON="$(dirname "$0")/kitty.app.icns"
APP="/Applications/kitty.app"

if [ ! -f "$ICON" ]; then
  echo "Icon not found: $ICON"
  exit 1
fi

sudo fileicon set "$APP" "$ICON"
sudo killall -KILL iconservicesagent 2>/dev/null
killall Finder
killall Dock

echo "Icon set. Restart your Mac for the change to take effect."
