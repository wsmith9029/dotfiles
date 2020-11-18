#!/usr/bin/sh

if [ ! $(pgrep "picom") ]; then
				picom --experimental-backends --config .config/picom/config
fi
