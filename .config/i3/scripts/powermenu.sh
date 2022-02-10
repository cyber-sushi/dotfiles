#!/bin/env sh

SHUTDOWN="襤"
REBOOT="勒"
LOGOUT=""

COMMAND=`echo "$SHUTDOWN|$REBOOT|$LOGOUT" | rofi -dmenu -sep "|" -theme powermenu`
[ "$COMMAND" = "$SHUTDOWN" ] && systemctl poweroff
[ "$COMMAND" = "$REBOOT" ] && systemctl reboot
[ "$COMMAND" = "$LOGOUT" ] && i3-msg exit
